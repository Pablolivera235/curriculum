<?php
// functions.php

/**
 * Establece la conexión PDO a la base de datos.
 * @return PDO|null Retorna el objeto PDO en éxito, null en fallo.
 */
function connect_db(): ?PDO {
    require_once 'config.php'; // Asegúrate que la ruta es correcta
    $dsn = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=" . DB_CHARSET;
    try {
        $pdo = new PDO($dsn, DB_USER, DB_PASS, $pdo_options);
        return $pdo;
    } catch (PDOException $e) {
        // En un entorno de producción, deberías loggear el error en lugar de mostrarlo
        error_log("Error de conexión a BD: " . $e->getMessage());
        // Podrías mostrar un mensaje genérico al usuario
        // echo "Error al conectar con la base de datos.";
        return null;
    }
}

/**
 * Obtiene la ruta de la imagen de perfil del usuario.
 * @param PDO $pdo Objeto de conexión PDO.
 * @param string $username Nombre del usuario.
 * @return string Ruta de la imagen de perfil.
 */
function getProfileImage(PDO $pdo, string $username): string {
    $defaultImage = "../assets/Perfiles/default.png";
    try {
        $query = "SELECT p.Img
                  FROM perfil p
                  JOIN usuarios u ON p.id_usuario = u.id
                  WHERE u.Usuarios = ?";
        $stmt = $pdo->prepare($query);
        $stmt->execute([$username]);
        $result = $stmt->fetch();

        if ($result && !empty($result['Img'])) {
            // Asegúrate que la ruta base es correcta y el nombre de archivo es seguro
            return "../assets/Perfiles/" . htmlspecialchars($result['Img'], ENT_QUOTES, 'UTF-8');
        }
    } catch (PDOException $e) {
        error_log("Error al obtener imagen de perfil para {$username}: " . $e->getMessage());
        // No interrumpir, simplemente devolver la imagen por defecto
    }
    return $defaultImage;
}

/**
 * Actualiza la marca de tiempo de última actividad del usuario.
 * @param PDO $pdo Objeto de conexión PDO.
 * @param string $username Nombre del usuario.
 */
function updateUserActivity(PDO $pdo, string $username): void {
     try {
        // Primero obtenemos el ID del usuario
        $stmtUser = $pdo->prepare("SELECT id FROM usuarios WHERE Usuarios = ?");
        $stmtUser->execute([$username]);
        $user = $stmtUser->fetch();

        if ($user) {
            $userId = $user['id'];
            // Usamos INSERT ... ON DUPLICATE KEY UPDATE para insertar o actualizar
            $sql = "INSERT INTO usuarios_activos (usuario_id, ultima_actividad)
                    VALUES (:usuario_id, NOW())
                    ON DUPLICATE KEY UPDATE ultima_actividad = NOW()";
            $stmt = $pdo->prepare($sql);
            $stmt->execute(['usuario_id' => $userId]);
        } else {
             error_log("Intento de actualizar actividad para usuario no existente: {$username}");
        }
     } catch (PDOException $e) {
         error_log("Error al actualizar actividad para {$username}: " . $e->getMessage());
     }
}

/**
 * Obtiene los IDs de usuarios activos recientemente.
 * @param PDO $pdo Objeto de conexión PDO.
 * @return array Lista de IDs de usuarios activos.
 */
function getActiveUsers(PDO $pdo): array {
    try {
        // Eliminar registros antiguos (p.ej., más de 15 minutos) - Opcional, depende de tu lógica
         $pdo->exec("DELETE FROM usuarios_activos WHERE ultima_actividad < (NOW() - INTERVAL 15 MINUTE)");

        // Obtener usuarios activos en los últimos 5 minutos
        $sql = "SELECT usuario_id
                FROM usuarios_activos
                WHERE ultima_actividad > (NOW() - INTERVAL 5 MINUTE)
                ORDER BY ultima_actividad DESC
                LIMIT 10"; // Limitar resultados si es necesario
        $stmt = $pdo->query($sql);
        return $stmt->fetchAll(); // Devuelve un array de arrays asociativos
    } catch (PDOException $e) {
        error_log("Error al obtener usuarios activos: " . $e->getMessage());
        return []; // Devolver array vacío en caso de error
    }
}

?>