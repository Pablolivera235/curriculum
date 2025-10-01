<?php
// --- SOLO PARA DEBUG ---
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
// --- FIN DEBUG ---
// index.php
session_start();

 // ¡Siempre al principio!

require_once 'functions.php'; // Incluir funciones
// require_once 'config.php'; // config.php es incluido dentro de connect_db()

// Verificar si el usuario está logueado
if (!isset($_SESSION['usuario'])) {
    // Redirigir a la página de login si no hay sesión
    header('Location: ../../index.php'); // Cambia 'login.php' por tu página de login
    exit;
}

$nombreUsuario = $_SESSION['usuario']; // Nombre de usuario de la sesión

// Conectar a la base de datos usando PDO
$pdo = connect_db();

// Si la conexión falla, $pdo será null. Manejarlo adecuadamente.
if (!$pdo) {
    // Mostrar un mensaje de error genérico y detener la ejecución
    // En producción, esto debería ser manejado de forma más elegante
    exit("Error crítico: No se pudo conectar a la base de datos.");
}

// --- Manejo de Solicitudes AJAX ---

// AJAX para usuarios activos
if (isset($_GET['ajax']) && $_GET['ajax'] == '1') {
    header('Content-Type: application/json'); // Indicar que la respuesta es JSON
    // No necesitamos actualizar actividad aquí si se hace en cada carga de página
    // updateUserActivity($pdo, $nombreUsuario); // Opcional si quieres actualizar en cada poll
    $usuarios_activos = getActiveUsers($pdo);
    echo json_encode($usuarios_activos); // Devolver JSON
    exit; // Terminar script para respuestas AJAX
}

// AJAX para cargar detalles de serie
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['serie_id'])) {
    $serie_id = filter_input(INPUT_POST, 'serie_id', FILTER_VALIDATE_INT);

    if ($serie_id) {
        try {
            // Obtener datos de la serie
            $stmt_serie = $pdo->prepare("SELECT * FROM series WHERE id = ?");
            $stmt_serie->execute([$serie_id]);
            $serie_data = $stmt_serie->fetch();

            // Obtener capítulos
            $stmt_cap = $pdo->prepare("SELECT * FROM capitulos WHERE nombre_id = ? ORDER BY temporada"); // Añadir orden
            $stmt_cap->execute([$serie_id]);
            $capitulos = $stmt_cap->fetchAll();

            if ($serie_data) {
                // Empezar a capturar el buffer de salida para el HTML del modal
                ob_start();
                ?>
                <div class="content" data-serie-id="<?= htmlspecialchars($serie_data['id']) ?>">
                    <img id="salir_serie" src="../../assets/back-black.png" alt="Cerrar">

                    <button onclick="registrarClick(<?= htmlspecialchars($serie_data['id'])?>)" type="submit" id="fav">
                        <img src="../../assets/star.png">
                    </button> 

                    <?php if (!empty($serie_data['poster'])): ?>
                    <img id="ser_post_pop" src="<?= htmlspecialchars($serie_data['poster'], ENT_QUOTES, 'UTF-8') ?>" alt="Poster de <?= htmlspecialchars($serie_data['nombre']) ?>">
                    <?php endif; ?>

                    <div class="infoBox">
                        <h1><?= htmlspecialchars($serie_data['nombre']) ?></h1>
                        <div>
                            <p><?= nl2br(htmlspecialchars($serie_data['descripcion'] ?? 'Sin descripción.')) ?></p>
                        </div>
                    </div>

                     <div id="características_tecnicas">
                         <img class="about_img" src="../../assets/about.png" alt="Información">
                         <img src="../../assets/hd.png" alt="HD">
                         <img src="../../assets/dolby.png" alt="Dolby">
                         <button id="temp">Temporadas</button>
                         <ul id="ultemp">
                             <li>Temporada 1</li>
                             <li>Temporada 2</li>
                             <li>Temporada 3</li>
                         </ul>
                     </div>

                     <button id="ser_ver">VER AHORA</button>

                     <?php if (!empty($capitulos)): ?>
                     <ul class="epis">
                         <?php foreach ($capitulos as $capitulo): ?>
                             <li data-url="<?= htmlspecialchars($capitulo['url'], ENT_QUOTES, 'UTF-8') ?>"
                                 title="<?= htmlspecialchars($capitulo['nombre']) ?>" name="<?= htmlspecialchars($capitulo['nombre']) ?>">
                                 <?php if (!empty($capitulo['caratula'])): ?>
                                 <img src="<?= htmlspecialchars($capitulo['caratula'], ENT_QUOTES, 'UTF-8') ?>" alt="Miniatura <?= htmlspecialchars($capitulo['nombre']) ?>">
                                 <?php endif; ?>
                                 <div>
                                     <h1><?= htmlspecialchars($capitulo['nombre'] ?? 'Capítulo sin nombre') ?></h1>
                                     <p><?= htmlspecialchars($capitulo['info'] ?? 'Sin información adicional.') ?></p>
                                 </div>
                             </li>
                         <?php endforeach; ?>
                     </ul>
                     <?php else: ?>
                         <p style="text-align: center; margin-top: 1rem;">No hay capítulos disponibles para esta serie.</p>
                     <?php endif; ?>

                </div>
                <?php
                // Obtener el HTML capturado y limpiar el buffer
                echo ob_get_clean();
            } else {
                // Serie no encontrada, devolver error o mensaje
                http_response_code(404); // Not Found
                echo "<p>Error: Serie no encontrada.</p>";
            }

        } catch (PDOException $e) {
            error_log("Error AJAX al cargar serie ID {$serie_id}: " . $e->getMessage());
            http_response_code(500); // Internal Server Error
            echo "<p>Error interno al cargar la serie. Inténtelo más tarde.</p>";
        }
        exit; // Terminar script para respuesta AJAX
    } else {
        http_response_code(400); // Bad Request
        echo "<p>Error: ID de serie inválido.</p>";
        exit;
    }
}


// --- Preparación de Datos para la Página Principal ---
try {
// --- CAMBIO PRINCIPAL AQUÍ ---
    // Obtener la lista de series favoritas del usuario en sesión

    // Asegúrate de que el ID del usuario esté en una variable
    $usuarioid = $_SESSION['usuarioid']; 

    // Prepara la nueva consulta SQL
    $sql = "SELECT s.id, s.nombre, s.poster
FROM series s
WHERE s.tipo = 'pelicula'
ORDER BY s.id DESC;";

    // Ejecuta la consulta de forma segura
$stmt_fav_series = $pdo->prepare($sql);
$stmt_fav_series->execute();  // <--- SIN parámetros
$series_list = $stmt_fav_series->fetchAll();

    // --- FIN DEL CAMBIO ---

} catch (PDOException $e) {
    error_log("Error preparando datos para la página principal: " . $e->getMessage());
    // Decide cómo manejar el error. ¿Mostrar un mensaje? ¿Usar datos por defecto?
    $rutaImagenPerfil = "../../assets/Perfiles/default.png"; // Imagen por defecto
    $series_list = [];
    // $movies_list = [];
    $error_message = "Ocurrió un error al cargar los datos."; // Mensaje para mostrar (opcional)
}

// Leer cookie de tema para posible renderizado inicial en servidor (p.ej. icono de carga)
$theme = $_COOKIE['theme'] ?? 'light'; 
// 'light' por defecto si no hay cookie

$usuario = $_SESSION['usuario'];

// Conectar a la base de datos
$con = mysqli_connect("localhost", "Pablolivera235", "Eljavi.o01", "unrecord");

// Verificar conexión
if (!$con) {
    die("Error de conexión: " . mysqli_connect_error());
}

// Consulta segura con consulta preparada
$query = "SELECT Img FROM perfil WHERE id_usuario = (SELECT id FROM usuarios WHERE Usuarios = ?)";

// Preparar la consulta
$stmt = mysqli_prepare($con, $query);
if (!$stmt) {
    die("Error en la preparación de la consulta: " . mysqli_error($con));
}

// Vincular parámetros
mysqli_stmt_bind_param($stmt, "s", $usuario);

// Ejecutar la consulta
mysqli_stmt_execute($stmt);

// Obtener el resultado
$result = mysqli_stmt_get_result($stmt);

// Verificar si hay resultados
if ($row = mysqli_fetch_assoc($result)) {
    $nombreImagen = $row['Img'];
    $rutaImagen = "../../assets/Perfiles/" . htmlspecialchars($nombreImagen, ENT_QUOTES, 'UTF-8');
} else {
    $rutaImagen = "../../assets/Perfiles/default.png"; // Imagen por defecto si no hay resultado
}


$res = mysqli_query($con, "SELECT id FROM usuarios WHERE Usuarios LIKE '$nombreUsuario'");
if ($fil = mysqli_fetch_assoc($res)){
    $_SESSION['usuarioid'] = $fil['id'];

}
if ($_SERVER["REQUEST_METHOD"] == "GET") {
$serieid = isset($_GET['serie_id']) ? $_GET['serie_id'] : null;
$usuarioid = isset($_SESSION['usuarioid']) ? $_SESSION['usuarioid'] : null;
if ($usuarioid !== null && $serieid !== null) {
$stmt = $con->prepare("INSERT INTO favoritos (usuarioid, serieid) VALUES (?, ?)");
$stmt->bind_param("ii", $usuarioid, $serieid);
$stmt->execute();
    }
}
?>
<!DOCTYPE html>
<html lang="es"> <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UNRECORD | Home</title>
    <link rel="icon" href="../../assets/icono.png" type="image/x-icon"> 
    <link rel="stylesheet" href="./style.css"> 
    <link rel="stylesheet" href="./style.css"> 
    <link rel="manifest" href="../../../manifest.json"> <script>
        // Define variables globales en el scope de window para que JS las use
        window.currentUser = <?php echo json_encode(htmlspecialchars($nombreUsuario, ENT_QUOTES, 'UTF-8')); ?>;
        // Puedes pasar más datos si son necesarios globalmente
    </script>

</head>
<body class="<?php echo htmlspecialchars($theme); // Aplicar clase inicial del tema ?>">

     <div class="ios-toast" id="toast">
          <img src="../../assets/icono.png" alt="App Logo" />
          <div class="toast-text">
            <h4>UnRecord</h4>
            <p>Disponible en Android, Windows y Linux</p>
          </div>
            <button class="install-btn" onclick="window.location.href = '../download.php'">Instalar</button>
        </div>

        <script>
          // Mostrar la notificación después de 1 segundo
          setTimeout(() => {
            document.getElementById("toast").classList.add("show");

            // Ocultar después de 5 segundos
            setTimeout(() => {
              document.getElementById("toast").classList.remove("show");
            }, 6000);
          }, 1000);

          if (!localStorage.getItem('toastShown')) {
            setTimeout(() => {
                document.getElementById("toast").classList.add("show");
                localStorage.setItem('toastShown', 'true');
                setTimeout(() => {
                document.getElementById("toast").classList.remove("show");
                }, 6000);
            }, 1000);
            }



function registrarClick(serieId) {
    fetch('pruebas.php?serie_id=' + encodeURIComponent(serieId), {
        method: 'GET',
        credentials: 'include'
    })
    .then(response => response.text())
    .then(data => {
        console.log(data);
        // Aquí podrías cambiar el botón, desactivarlo, mostrar mensaje, etc.
    })
    .catch(error => {
        console.error('Error:', error);
    });
}

        </script>

        <style>
            #fav_ico{
                width: 4rem;
                height: auto;
                width: 2.2rem;
            }
            #div-fav{
                height: 4rem;
                border-radius: 1rem;
                height: 5rem;
            }

             .ios-toast {
      position: fixed;
      top: -100px;
      left: 50%;
      transform: translateX(-50%);
      background: #0c2c3c;
      border-radius: 20px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
      display: flex;
      align-items: center;
      padding: 12px 20px;
      gap: 12px;
      transition: top 0.4s ease;
      z-index: 9999;
      min-width: 280px;
    }

    .ios-toast.show {
      top: 20px;
    }

    .ios-toast img {
      width: 40px;
      height: 40px;
      border-radius: 12px;
    }

    .toast-text {
      flex: 1;
      color:white;
    }

    .toast-text h4 {
      margin: 0 0 4px;
      font-size: 16px;
      color:white;
    }

    .toast-text p {
      margin: 0;
      font-size: 13px;
      color: #666;
    }

    .install-btn {
      background: #007aff;
      color: white;
      border: none;
      padding: 6px 12px;
      border-radius: 10px;
      font-size: 14px;
      cursor: pointer;
    }

    @media (max-width: 550px) {
#div-fav {
        top: .2rem;
        right: 9.5rem;
        position: absolute;
        height: 2rem;
        border-radius: 1rem;
        width: 5rem;
}
#fav_ico{
    width: 2rem;
}
}
        </style>

    <div id="loading-screen">
        <img id="loading" style="width: 6rem;" src="<?php echo ($theme === 'dark') ? '../../assets/icono_dark.png' : '../../assets/icono.png'; ?>" alt="Cargando...">
        <h4 style="opacity: 50%; color: gray; position: fixed; bottom: 5rem; font-size: 1rem;">by Pablo Olivera</h4>
    </div>

    <header>
        <img id="buscar" src="../../assets/search.png" alt="Buscar"> <img id="isotipo" src="../../assets/isotipo.png" alt="UNRECORD Logo"> <form id="form_search" action="#" style="display: none;"> <input type="search" id="search" placeholder="Buscar películas o series...">
            <ul id="dropdown"></ul> </form>

        <div id="perfil_container">
            <img id="foto_perfil" src="<?= htmlspecialchars($rutaImagen, ENT_QUOTES, 'UTF-8'); ?>" alt="Foto de perfil">
            <img id="verificado" src="../../assets/Perfiles/Verificado.png" alt="Verificado">
        </div>
    </header>

    <nav>
        <div>
            <div><img src="../../assets/home-black.png" alt="Home" title="Inicio"></div>
            <div><img class="intro" onclick="location.href='../../pages/movies.php'" src="../../assets/video.png" alt="Películas" title="Películas"></div>
            <div><img class="study" onclick="location.href='../../pages/series.php'" src="../../assets/series.png" alt="Series" title="Series"></div>
            <div><img class="knoledge" onclick="location.href='../../pages/discover.php'" src="../../assets/Descubrir.png" alt="Descubrir" title="Descubrir"></div>
        </div>
        <div id="div-fav"><img id="fav_ico" src="../../assets/star.png" alt="Fav" title="Favs"></div>
    </nav>

    <div id="container">

        <main id="pelis">
            <div id="contenedor_bienvenida">
                 <img id='default' src="../../assets/welcome.png" alt="Bienvenido"> <h1 id="user_name">Hola, <?= htmlspecialchars($nombreUsuario, ENT_QUOTES, 'UTF-8'); ?></h1>
            </div>

            <form id="seriesForm" style="display: contents;"> <?php if (!empty($series_list)): ?>
                    <?php foreach ($series_list as $serie): ?>
                        <button class="post_container_serie" type="submit" name="serie_id" value="<?= htmlspecialchars($serie['id']) ?>"
                                data-name="<?= htmlspecialchars($serie['nombre']) ?>"  title="Ver <?= htmlspecialchars($serie['nombre']) ?>">
                            <?php if (!empty($serie['poster'])): ?>
                            <img class="post_photo" src="<?= htmlspecialchars($serie['poster'], ENT_QUOTES, 'UTF-8') ?>" alt="Poster <?= htmlspecialchars($serie['nombre']) ?>">
                            <?php else: ?>
                            <span class="no-poster">Sin Poster</span> <?php endif; ?>
                        </button>
                    <?php endforeach; ?>
                <?php else: ?>
                    <?php if (empty($error_message)): // Mostrar solo si no hay otro error general ?>
                        <p>No hay series disponibles en este momento.</p>
                    <?php endif; ?>
                <?php endif; ?>
            </form>

            <?php

            if (!empty($movies_list)):
                foreach ($movies_list as $movie): ?>
                    <div class="post_container movie_container"
                         data-name="<?= htmlspecialchars($movie['titulo']) ?>"
                         data-url="<?= htmlspecialchars($movie['url']) ?>"
                         onclick="abrir_peli('<?= htmlspecialchars($movie['url'], ENT_QUOTES, 'UTF-8') ?>')"
                         title="Ver <?= htmlspecialchars($movie['titulo']) ?>">

                        <?php if (!empty($movie['poster'])): ?>
                        <img class="post_photo" src="<?= htmlspecialchars($movie['poster'], ENT_QUOTES, 'UTF-8') ?>" alt="Poster <?= htmlspecialchars($movie['titulo']) ?>">
                        <?php else: ?>
                        <span class="no-poster">Sin Poster</span>
                        <?php endif; ?>
                    </div>
            <?php
                endforeach;
            endif;

            ?>

            <?php if (!empty($error_message)): ?>
                 <p style="color: red; text-align: center; width: 100%;"><?= htmlspecialchars($error_message) ?></p>
            <?php endif; ?>

        </main> </div> <div id="contenido">
        </div>


    <script src="./script.js"></script>

</body>
</html>