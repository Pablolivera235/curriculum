<?php
// Mostrar errores para depuración
ini_set('display_errors', 1);
ini_set('log_errors', 1);
error_reporting(E_ALL);

// Iniciar sesión antes de cualquier salida HTML
session_start();

if (!isset($_SESSION['usuario'])) {
    die("Error: No hay sesión activa.");
}

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
    $rutaImagen = "../assets/Perfiles/" . htmlspecialchars($nombreImagen, ENT_QUOTES, 'UTF-8');
} else {
    $rutaImagen = "../assets/Perfiles/default.png"; // Imagen por defecto si no hay resultado
}

// Cerrar consulta y conexión
mysqli_stmt_close($stmt);
mysqli_close($con);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="../assets/icono.png" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../scripts/main.js"></script>
    <link rel="manifest" href="../manifest.json">
    <title>UNRECORD | Home</title>
</head>
<body>


<img id="isotipo" src="../assets/isotipo.png" alt="">
<div id="perfil_container">
            <img id="verificado" src="../assets/Perfiles/Verificado.png" alt="">
            <img id="foto_perfil" src="<?php echo htmlspecialchars($rutaImagen, ENT_QUOTES, 'UTF-8'); ?>" alt="Foto de perfil">
</div>
<div id="container">
    <nav>
        <div>
            <div><img onclick="location.href='./home/home.php'" onmouseenter="this.src='../assets/home-black.png'" onmouseout="this.src='../assets/home-white.png'" src="../assets/home-white.png" alt=""></div>
            <div><img class="intro" onclick="location.href='../pages/movies.php'" onmouseenter="this.src='../assets/video-dark.png'" onmouseout="this.src='../assets/video.png'" src="../assets/video.png" alt=""></div>
            <div><img class="study" onclick="location.href='../pages/series.php'" onmouseenter="this.src='../assets/series-black.png'" onmouseout="this.src='../assets/series.png'" src="../assets/series.png" alt=""></div>
            <div><img class="knoledge" src="../assets/descubrir-dark.png" alt=""></div>
        </div>
    </nav>

    <!-- Formulario corregido -->
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
        <a>S<span class="red">o</span>licitar <br> Película/Serie</a>
        <br>
        <input type="text" placeholder="Nombre Película/Serie" name="mov" required>
        <input type="submit" name="submit" value="Enviar Solicitud" id="send">
    </form>

</div>

<?php 
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
    // Verificar si el usuario está autenticado
    if (!isset($_SESSION['usuario'])) {
        die("Error: Usuario no autenticado.");
    }

    $mov = trim($_POST["mov"]);  // Eliminar espacios en blanco
    $user = $_SESSION['usuario'];

    // Conectar a la base de datos
    $con = mysqli_connect("localhost", "Pablolivera235", "Eljavi.o01", "unrecord");

    if (!$con) {
        die("Error de conexión: " . mysqli_connect_error());
    }

    // Obtener el ID del usuario
    $stmt = mysqli_prepare($con, "SELECT id FROM usuarios WHERE Usuarios = ?");
    mysqli_stmt_bind_param($stmt, "s", $user);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result)) {
        $usuarioId = $row['id'];

        // Insertar en la tabla solicitudes
        $stmt = mysqli_prepare($con, "INSERT INTO solicitudes (usuario_id, solicitud) VALUES (?, ?)");
        mysqli_stmt_bind_param($stmt, "is", $usuarioId, $mov);

        if (mysqli_stmt_execute($stmt)) {
            echo "<p>Solicitud registrada con éxito.</p>";
        } else {
            echo "<p>Error al registrar la solicitud: " . mysqli_error($con) . "</p>";
        }
    } else {
        echo "<p>Error: Usuario no encontrado.</p>";
    }

    // Cerrar conexión
    mysqli_stmt_close($stmt);
    mysqli_close($con);
}
?>

<style>
    /* Estilos */
    @font-face {
        font-family: 'Roboto';
        src: local('../fonts/RobotoMono-VariableFont_wght.ttf');
        font-weight: bold;
        font-style: normal;
    }

    * {
        margin: 0;
        padding: 0;
        font-family: Roboto, sans-serif;
    }

    #foto_perfil{
        width: 2.3rem;
        height: 2.2rem;
        border: solid;
        border-radius: 100rem;
        margin-left: .5rem;
        margin-top: .15rem;
    }
    #perfil_container{
        display: flex;
        position: absolute;
        width: fit-content;
        top: 1.5%;
        right: 3%;
        border: none;
    }
    #buscar{
    display: flex;
    position: absolute;
    width: 2.3rem;
    top: 1.9%;
    left: 3%;
    border: none;
    }

    #verificado{
        position: absolute;
        width: 1.35rem;
        bottom: -.1rem;
        right: -.2rem;
    }

    input {
        text-align: center;
        border: solid;
        border-radius: .5rem;
        height: 2rem;
        width: 20rem;
        font-weight: bolder;
    }

    form {
        display: flex;
        flex-direction: column;
        text-align: center;
        align-items: center;
        gap: .3rem;
        width: min-content;
        font-weight: bolder;
    }

    body {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
    }
    a{
        font-size: 4rem; 
        margin-bottom: .2rem;
    }

    .red {
        color: red;
        -webkit-text-stroke: 3px black;
    }

    #send {
        margin-top: .5rem;
        padding: .5rem;
        width: fit-content;
        height: fit-content;
        font-weight: bold;
    }

    #isotipo {
        display: block;
        width: 10rem;
        position: absolute;
        top: 1rem;
        left: 50%;
        transform: translateX(-50%);
    }

    #container {
        display: flex;
        overflow-y: scroll;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 100vw;
        height: 100vh;
    }

    nav{
        display: flex;
        flex-direction: column;
        align-items:center;
        justify-content: center;
        position: absolute;
        left: 1%;
        top: 37%;
        border: solid;
        border-radius: 1rem;
        height: 10.5rem;
        overflow: hidden;
        width: 2.6rem;
    
    }

    nav>div{
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        list-style: none;
    }

    nav>div>div{
        display: flex;  
        align-items: center;
        justify-content: center;
        padding: .5rem;
        border-radius: .5rem;
    }

    img{
        width: 1.5rem;
    }

    .study{
        width: 1.7rem;
        height: 2rem;
        margin-top: -.3rem;
    }

    .knoledge{
        width: 1.5rem;
        margin-top: -.25rem;
    }

    .intro{
        width: 1.5rem;
    }

    @media(max-width: 997px){
    input {
        height: 2rem;
        width: 15rem;
    }
    a{
        font-size: 3rem;
    }
    }

    @media(max-width: 700px){
    input {
        height: 2rem;
        width: 15rem;
    }
    a{
        font-size: 2rem;
    }
    }

    @media(max-width: 550px){
    input {
        height: 2rem;
        width: 13rem;
    }
    a{
        font-size: 2rem;
    }
        nav{
        left: 1%;
        top: auto;
        bottom: 1%;
        height: 2.6rem;
        width: 10.5rem;
        z-index: 1;
        left: 50%;
        transform: translateX(-50%);
        background: white;
    }

    nav>div{
        flex-direction: row;
    }

    .study{
        margin-top: .0rem;
    }

    .knoledge{
        margin-top: .1rem;
    }

    .intro{
        width: 1.5rem;
    }

    }
</style>

</body>
</html>
