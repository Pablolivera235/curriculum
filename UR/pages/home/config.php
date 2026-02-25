<?php
// config.php
define('DB_HOST', 'localhost');
define('DB_NAME', 'unrecord');
define('DB_USER', 'Pablolivera235'); 
define('DB_PASS', 'Eljavi.o01'); 
define('DB_CHARSET', 'utf8mb4');

// Opciones de PDO
$pdo_options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION, // Usar excepciones para errores
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,       // Devolver arrays asociativos por defecto
    PDO::ATTR_EMULATE_PREPARES   => false,                  // Usar preparaciones nativas
];
?>
