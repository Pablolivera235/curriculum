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
<div>
    <img onclick="busqueda()" id="buscar" src="<?php echo ($mode === 'dark') ? '../assets/dark/search.png' : '../assets/buscar.png'; ?>" alt="">

<?php
session_start();

// Verificar si existe la sesión de usuario

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


//Prueba de conteo usuarios
try {
    // Conectar con la base de datos usando PDO
    $pdo = new PDO("mysql:host=localhost;dbname=unrecord", "Pablolivera235", "Eljavi.o01", [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ]);

    // Si la petición es AJAX, solo actualizar actividad y devolver los usuarios activos
    if (isset($_GET['ajax'])) {
        actualizarActividad($pdo, $usuario);
        $usuarios_activos = obtenerUsuariosActivos($pdo);
        echo json_encode($usuarios_activos);
        exit; // Importante para evitar que se ejecute el resto del HTML
    }

    // Obtener el ID del usuario y actualizar su actividad en la carga inicial
    actualizarActividad($pdo, $usuario);
    $usuarios_activos = obtenerUsuariosActivos($pdo);

} catch (PDOException $e) {
    die("Error en la base de datos: " . $e->getMessage());
}

// Función para actualizar la actividad del usuario
function actualizarActividad($pdo, $usuario) {
    $stmt = $pdo->prepare("SELECT id FROM usuarios WHERE Usuarios = ?");
    $stmt->execute([$usuario]);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($row) {
        $usuarioId = $row['id'];

        $sql = "INSERT INTO usuarios_activos (usuario_id, ultima_actividad) 
                VALUES (:usuario_id, NOW()) 
                ON DUPLICATE KEY UPDATE ultima_actividad = NOW()";

        $stmt = $pdo->prepare($sql);
        $stmt->execute(['usuario_id' => $usuarioId]);
    }
}

// Función para obtener los usuarios activos en los últimos 5 minutos
function obtenerUsuariosActivos($pdo) {
    $sql = "SELECT usuario_id FROM usuarios_activos 
            WHERE ultima_actividad > (NOW() - INTERVAL 5 MINUTE) 
            ORDER BY ultima_actividad DESC 
            LIMIT 10";
    $stmt = $pdo->query($sql);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}
//Fin prueba de conteo usuarios


// Cerrar consulta y conexión
mysqli_stmt_close($stmt);
mysqli_close($con);

?>
    
        <?php foreach ($usuarios_activos as $usuario) : ?>
            <script> console.log(<?= htmlspecialchars($usuario['usuario_id']) ?>); </script>
        <?php endforeach; ?>
<img id="isotipo" src="<?php echo ($mode === 'dark') ? '../assets/isotipo_dark.png' : '../assets/isotipo.png'; ?>"alt="">
<div id="perfil_container">
            <img id="verificado" src="../assets/Perfiles/Verificado.png" alt="">
            <img id="foto_perfil" src="<?php echo htmlspecialchars($rutaImagen, ENT_QUOTES, 'UTF-8'); ?>" alt="Foto de perfil">
<script type="text/javascript">


    var unrec = document.getElementById('isotipo');
var srch = document.getElementById('form_search');
srch.classList.add('esconder');
unrec.classList.add('bloq');



console.log(document.getElementById('form_search').classList);

//busqueda

document.addEventListener("DOMContentLoaded", function () {
    let timeout = null;
    const searchInput = document.getElementById("search");

    // Crear el dropdown si no existe
    let dropdown = document.getElementById("dropdown");
    if (!dropdown) {
        dropdown = document.createElement("ul");
        dropdown.id = "dropdown";
        document.body.appendChild(dropdown);
    }

    searchInput.addEventListener("keyup", function () {
        clearTimeout(timeout);
        timeout = setTimeout(buscarPorName, 300);
    });

    function buscarPorName() {
        let searchText = searchInput.value.toLowerCase();
        let elements = document.querySelectorAll("[name]");
        let resultados = [];

        elements.forEach(el => {
            let nameAttr = el.getAttribute("name").toLowerCase();
            let onClickAttr = el.getAttribute("onclick");

            if (nameAttr.includes(searchText) && searchText !== "" && onClickAttr) {
                el.classList.add("highlight");
                resultados.push(el);
            } else {
                el.classList.remove("highlight");
            }
        });

        actualizarDesplegable(resultados);
    }

    function actualizarDesplegable(resultados) {
        dropdown.innerHTML = ""; // Limpiar opciones anteriores

        if (resultados.length === 0) {
            dropdown.style.display = "none";
            return;
        }

        resultados.forEach(el => {
            let li = document.createElement("li");
            li.textContent = el.getAttribute("name");

            // Al hacer clic, simula un click en el elemento original
            li.onclick = function () {
                el.click(); 
                dropdown.style.display = "none"; // Oculta el desplegable después de la selección
            };

            dropdown.appendChild(li);
        });

        dropdown.style.display = "block"; // Mostrar el desplegable
    }

    // Ocultar el desplegable si el usuario hace clic fuera
    document.addEventListener("click", function (event) {
        if (!searchInput.contains(event.target) && !dropdown.contains(event.target)) {
            dropdown.style.display = "none";
        }
    });
});


//fin busqueda

</script>

<style type="text/css">

        @font-face {
        font-family: 'Roboto';
        src: local('../fonts/RobotoMono-VariableFont_wght.ttf');
        font-weight: bold;
        font-style: normal;
    }


            #loading-screen {
            position: fixed;
            width: 100vw;
            height: 100vh;
            background: white;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 24px;
            z-index: 9999;
            transition: opacity 0.5s ease-out;
        }

    .dark #loading-screen{
        background: #121212;
    }

        /* Hide content initially */
        body {
            visibility: hidden;
        }

    .infoBox.mostrar {
    display: flex;
    }

    .infoBox {
        top: 13rem;
        display: none;
        position: absolute;
        flex-direction: column;
        justify-content: center;
        width: 22rem;
        height: 15rem;
        background: rgb(45,45,45,255);
        color: white;
        padding: 0.5rem;
        font-size: 0.8rem;
        border-radius: .8rem;
        align-items: center;
    }

    .infoBox>h1{
        color: white;
        font-weight: bolder;
    }
    .infoBox>div{
        display: flex;
        margin-top: 1rem;
        flex-wrap: wrap;
        width: 90%;
    }


    li{
        display: flex;
        flex-direction: row;
        border-radius: .5rem;
        padding: .2rem;
        width: 100%;
        font-weight: bolder;
        font-family: 'Roboto';

    }

    #ser_post_pop{
        position: absolute;
        top: 0rem;
        z-index: -2;
        width:100%;
        height: 39rem;
        -webkit-mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 1) 75%, rgba(0, 0, 0, 0) 100%);
        mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 1) 75%, rgba(0, 0, 0, 0) 100%);
    }

    #ser_ver{
        border: solid;
        font-weight: bolder;
        font-size: 1.1rem;
        border-radius: .8rem;
        width: 90%;
        height: 2.8rem;
    }

    #características_tecnicas>img{
        width: 2rem;
    }

    #características_tecnicas{
        display: flex;
        flex-direction: row;
        justify-content: center;
        width: 81%;
        margin-top: 124%;
    }

    #about_img{
        margin-right: 32%;
    }

    #salir_serie{
        position: absolute;
        width: 2.5rem;
        left: .5rem;
        top: .5rem;
    }

    #temp{
        border-radius: .5rem;
        border: solid;
        background: white;
        margin-top: .2rem;
        height: 1.5rem;
        padding-right: .5rem;
        padding-left: .5rem;
        margin-left: 3rem;
        font-weight: bolder;
    }
    .epis{
        display: flex;
        flex-direction: column;
        margin-top: 1rem;
        width: 90%;
        height: fit-content;
    }
    .epis>li>img{
        width: 7rem;
        border: solid;
        border-radius: .5rem;
    }
    .epis>li>div>h1{
        font-size: 1rem;
    }
    .epis>li>div>p{
        margin-top: .15rem;
        font-size: .6rem;
    }
    .epis>li>div{
        margin-left: .5rem;
        width: 14rem;
        height: 4rem;
    }
    
    @media(min-width: 907px){
    .content{
    width: 31rem;
    }
    }

    #form_search{
        width: fit-content;
        position: absolute;
        top: 2.9%;
        left: 50%;
        transform: translateX(-50%);
    }

    .esconder{
        display: none;
    }

    .bloq{
        display: block;
    }
    #search{
        padding: 3px;
        border: solid 4px;
        border-radius: 15px;
    }
    .highlight {
        background-color: yellow;
    }
    #dropdown {
        top: 43%;
        position: absolute;
        border: 1px solid #ccc;
        background: white;
        max-width: 13rem;
        height: max-content;
        display: none;
        list-style: none;
        padding: 0;
        margin: 0;
        width: 100%;
        left: 50%;
        transform: translateX(-50%);
    }
    #dropdown li {
        padding: 7px;
        cursor: pointer;
    }
    #dropdown li:hover {
        background: #f0f0f0;
    }
@font-face {
        font-family: 'Roboto';
        src: local('../fonts/RobotoMono-VariableFont_wght.ttf');
        font-weight: bold;
        font-style: normal;
    }
    *{
        margin: 0;
        padding: 0;
        font-family: Roboto, sans-serif;
    }
     /*cambios en el background*/
     .dark body{
         background: #121212;
     }

     .light body{
         background: white;
     }
    body{
        overflow-x: hidden;
        display: flex;
        justify-content: center;
        flex-direction: column;
        background: default;
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

    .mostrar {
        display: block;
    }
    .flex{
        display: flex;
    }

    ::-webkit-scrollbar{
        width: .1rem;
        height: .1rem;
    }
    ::-webkit-scrollbar-track{
        border-radius: .3rem;
    }            
    .ocultar{
        display: none;
    }

    #back_pic{
        width: 100%;
        border-radius: 2rem;
    }
    #iso_port{
        position: absolute;
        width: 44rem;
        top: 30%;
        left: 7rem;
    }
    #isotipo{
        width: 10rem;
        position: absolute;
        top: 1rem;
        left: 50%;
        transform: translateX(-50%);
    }

    .dark #container{
        background: #121212;
    }

    #container{
        display: flex;
        overflow-y: scroll;
        flex-direction: column;
        align-items: center;
        width: 100vw;
        height: 100vh;
    }

    #contenedor_bienvenida{
        align-items: center;
        justify-content: center;
        flex-direction: column;
        width: 100%;
        height: 50%;
        margin-bottom: 4rem;
    }

    nav{
        display: flex;
        background: white;
        flex-direction: column;
        align-items:center;
        justify-content: center;
        position: fixed;
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

    #pelis{
        display: flex;
        flex-wrap: wrap;
        /* border: solid; */
        width: 80vw;
        /* margin-left: .4rem; */
        align-items: center;
        justify-content: center;
        height: 100vh;
        padding: 9rem;
        overflow-y: scroll;
    }
    .dark #post_container_serie{
         border: 4px solid white;
     }
    .light #post_container_serie{
         border: 4px solid black;
     }

    .dark #post_container{
         border: 4px solid white;
     }
    .light #post_container{
         border: 4px solid black;
     }

    /*cambios en el border*/
    #post_container{
        position: relative;
        display: inline-block;
        /* margin-top: 8rem; */
        /* margin-bottom: -5rem; */
        align-items: center;
        justify-content: center;
        border: 4px solid;
        border-radius: 1rem;
        width: 8rem;
        height: 10rem;
        overflow: hidden;
        margin-left: .2rem;
        margin-top: .3rem;
    }
     /*cambios en el border*/
     .dark #post_container_serie{
         border: 4px solid white;
     }
     .light #post_container_serie{
         border: 4px solid black;
     }

    #post_container_serie{
        position: relative;
        display: inline-block;
        /* margin-top: 8rem; */
        /* margin-bottom: -5rem; */
        align-items: center;
        justify-content: center;
        border: 4px solid;
        border-radius: 1rem;
        width: 8rem;
        height: 10rem;
        overflow: hidden;
        margin-left: .2rem;
        margin-top: .3rem;
    }
    .dark #user_name{
        color: white;
    }
    .light #user_name{
        color: black;
    }
    #user_name{
        margin-bottom: -10rem;
        padding: 5rem;
        font-family: Roboto, sans-serif;
    }
    .post_photo{
        display: flex;
        width: -webkit-fill-available;
        left: 50%;
        transform: translateY(-50%);
        margin-top: 60%;
    }

    #default{
        width: 50rem;
    }

    /*cambios en color, background y border*/
    .dark .content{
        color: white;
        background: #121212;
        border: white solid 4px;
    }
    .light .content{
        color: black;
        background: white;
        border: black solid 4px;
    }

    .content{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        overflow-y: scroll;
        position: absolute;
        border: solid 4px;
        border-bottom: none;
        top: 6rem;
        bottom: 0rem;
        left: 50%;
        transform: translateX(-50%);
        height: fit-content;
        width: 90vw;
        border-top-left-radius: 1.5rem;
        border-top-right-radius: 1.5rem;
        
        overflow: scroll;
        z-index: 2;
        font-family: 'Roboto';
        
    }

    li{
        display: flex;
        border:none;
        flex-direction: row;
        border-radius: .5rem;
        padding: .2rem;
        width: 100%;
        font-weight: bolder;
        font-family: Roboto, sans selif;

    }

    #ser_post_pop{
        position: absolute;
        top: 0rem;
        z-index: -2;
        width:100%;
        height: 39rem;
        -webkit-mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 1) 75%, rgba(0, 0, 0, 0) 100%);
        mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 1) 75%, rgba(0, 0, 0, 0) 100%);
    }

    #ser_ver{
        border: solid;
        font-weight: bolder;
        font-size: 1.1rem;
        border-radius: .8rem;
        width: 90%;
        height: 2.8rem;
    }

    #características_tecnicas>img{
        width: 2rem;
    }

    #características_tecnicas{
        display: flex;
        flex-direction: row;
        justify-content: center;
        width: 81%;
        margin-top: 124%;
    }

    #about_img{
        margin-right: 32%;
    }

    #salir_serie{
        position: absolute;
        width: 2.5rem;
        left: .5rem;
        top: .5rem;
    }

    #temp{
        border-radius: .5rem;
        border: solid;
        background: white;
        margin-top: .2rem;
        height: 1.5rem;
        padding-right: .5rem;
        padding-left: .5rem;
        margin-left: 3rem;
        font-weight: bolder;
    }
    .epis{
        display: flex;
        flex-direction: column;
        margin-top: 1rem;
        width: 90%;
        height: fit-content;
    }
    .epis>li>img{
        width: 7rem;
        border: solid;
        border-radius: .5rem;
    }
    .epis>li>div>h1{
        font-size: 1rem;
    }
    .epis>li>div>p{
        margin-top: .15rem;
        font-size: .6rem;
    }
    .epis>li>div{
        margin-left: .5rem;
        width: 14rem;
        height: 4rem;
    }


    @media(min-width: 907px){
    .content{
    width: 31rem;
    }
    }


    @media(max-width: 997px){
    #default{
        width: 35rem;
    }

    #iso_port{
        width: 30rem;
        top: 30%;
        left: 5rem;
    }
    }

    @media(max-width: 700px){
    #default{
        width: 20rem;
    }
    #iso_port{
        width: 20rem;
        top: 30%;
        left: 5rem;
    }
    }

    @media(max-width: 550px){
    #iso_port{
        width: 20rem;
        top: 35%;
        left: 1rem;
    }
    #back_pic{
        width: 100%;
        height: 100%;
        border-radius: 0rem;
        -webkit-mask-image: radial-gradient(circle, rgba(0,0,0,1) 50%, rgba(0, 0, 0, 1) 100%);
        mask-image: radial-gradient(circle, rgba(0,0,0,1) 50%, rgba(0,0,0,1) 100%);
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
    #portada{
        border-radius: 0;
        width: 130vw;
        height: 120%;
        margin-top: 5rem;
    }
    #pelis{
        width: 100vw;
        height: 100vh
    }
    #default{
        width: 20rem;
    }
    #user_name{
        padding: 1rem;
        font-size: 1.5rem;
        margin-bottom: 0rem;
    }
    #contenedor_bienvenida{
        margin-top: -3rem;
        margin-bottom: 1rem;
        height: 25%;
    }
    }
    </style>
    </div>
 </div>

   <!-- <div id="loading-screen">
        <img id="loading" style="width: 6rem;" src="<?php //echo ($mode === 'dark') ? '../assets/icono_dark.png' : '../assets/icono.png'; ?>">
        <h4 style="opacity: 50%; color: gray; position: fixed; bottom: 5rem; font-size: 1rem;">by Pablo Olivera</h2>
    </div> -->

    <nav>
        <div>
        <div><img src="../assets/home-black.png" alt=""></div>
        <div><img class="intro" onclick="location.href='../pages/movies.php'" onmouseenter="this.src='../assets/video-dark.png'" onmouseout="this.src='../assets/video.png'"src="../assets/video.png" alt=""></div>
        <div><img class="study"  onclick="location.href='../pages/series.php'" onmouseenter="this.src='../assets/series-black.png'" onmouseout="this.src='../assets/series.png'"src="../assets/series.png" alt=""></div>
        <div><img class="knoledge"  onclick="location.href='../pages/discover.php'" onmouseenter="this.src='../assets/descubrir-dark.png'" onmouseout="this.src='../assets/Descubrir.png'"src="../assets/Descubrir.png" alt=""></div>
        </div>
    </nav>
<div id="container">
    <div id="pelis">
        <div id="contenedor_bienvenida">
         <img id='default' src="<?php echo ($mode === 'dark') ? '../assets/dark/welcome.png' : '../assets/welcome.png'; ?>" alt='Imagen del post'>
         <h1 id="user_name"> <?php $usuario = $_SESSION['usuario']; echo"$usuario"; ?></h1>
        </div>

<?php
$conn = new mysqli("localhost", "Pablolivera235", "Eljavi.o01", "unrecord");
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Si se recibe una solicitud AJAX con POST, procesamos la serie sin recargar

    $serie_id = 'YellowJackets';

    // Obtener la serie seleccionada
    $stmt = $conn->prepare("SELECT * FROM series WHERE id = ?");
    $stmt->bind_param("i", $serie_id);
    $stmt->execute();
    $serie_result = $stmt->get_result();
    $serie_data = $serie_result->fetch_assoc();

    // Obtener los capítulos de la serie
    $stmt = $conn->prepare("SELECT * FROM capitulos WHERE nombre_id = ?");
    $stmt->bind_param("i", $serie_id);
    $stmt->execute();
    $capitulos_result = $stmt->get_result();

    // Construimos la respuesta HTML que se insertará con AJAX
    ob_start(); ?>

    <div id="<?= $serie_data['nombre'] ?>" class="content">
        <div class="infoBox">
            <h1><?= $serie_data['nombre'] ?></h1>
            <div>
                <p><?= $serie_data['descripcion'] ?></p>
            </div>
        </div>
        <img id="salir_serie" src="../assets/back-black.png">
        <img id="ser_post_pop" src="<?= $serie_data['poster'] ?>">

        <div id="características_tecnicas">
            <img class="about_img" src="../assets/about.png">
            <img src="../assets/hd.png">
            <img src="../assets/dolby.png">
            <button id="temp">Temporadas</button>
        </div>

        <button id="ser_ver" onclick="guard_gen('serie')">VER AHORA</button>

        <ul class="epis">
            <?php while ($capitulo = $capitulos_result->fetch_assoc()): ?>
                <li onclick="abrir_peli('<?= $capitulo['url'] ?>'), guard_gen('serie')">
                    <img src="<?= $capitulo['caratula'] ?>">
                    <div>
                        <h1><?= $capitulo['nombre'] ?></h1>
                        <p><?= $capitulo['info'] ?></p>
                    </div>
                </li>
            <?php endwhile; ?>
        </ul>
    </div>

    <?php
    echo ob_get_clean();
    exit; // Finalizamos aquí para no devolver el resto de la página en la respuesta AJAX

?>

<!-- Formulario de series -->
<form id="seriesForm">
    <?php
    $result = $conn->query("SELECT * FROM series");
    while ($row = $result->fetch_assoc()) {
        echo "<button id='post_container_serie' class='post_container_serie' type='submit' name='serie_id' value='" . $row['id'] . "'>";
        echo "<img class='post_photo' src='" . $row['poster'] . "'>";
        echo "</button>";
    }
    ?>
</form>

<!-- Contenedor para mostrar la serie -->
<div id="contenido"></div>

<script>
document.addEventListener("DOMContentLoaded", function () {
    let form = document.getElementById("seriesForm");

    form.addEventListener("submit", function (event) {
        event.preventDefault(); // ❌ Evita que la página se recargue
        event.stopPropagation(); // 🔥 Evita que otros formularios se activen

        let button = event.submitter; // Obtiene el botón correcto
        let serieId = button.getAttribute("value");

        let formData = new FormData();
        formData.append("serie_id", serieId);

        fetch(window.location.href, {
            method: "POST",
            body: formData,
        })
        .then(response => response.text())
        .then(html => {
            document.getElementById("contenido").innerHTML = html;
            document.getElementById("contenido").style.display = "block";
            addEventListeners();
        })
        .catch(error => console.error("Error en AJAX:", error));
    });

    function addEventListeners() {
        let closeButton = document.querySelector("#salir_serie");
        if (closeButton) {
            closeButton.addEventListener("click", function () {
                document.getElementById("contenido").style.display = "none";
            });
        }
    }
});

</script>
</div>
<script>



document.addEventListener("DOMContentLoaded", function() {
    document.querySelectorAll('.about_img').forEach((image) => {
        image.addEventListener("click", function() {
            let box = this.closest('.content').querySelector('.infoBox');

            // Cerrar cualquier otro .infoBox abierto
            document.querySelectorAll('.infoBox.mostrar').forEach((openBox) => {
                if (openBox !== box) {
                    openBox.classList.remove('mostrar');
                }
            });

            // Alternar la visibilidad del .infoBox correspondiente
            if (box) {
                box.classList.toggle('mostrar');
            }
        });
    });
});




            function actualizarUsuariosActivos() {
            fetch("?ajax=1")
                .then(response => response.json())
                .then(data => {
                    let usuariosLista = document.getElementById("usuarios-activos");
                    usuariosLista.innerHTML = "";
                    data.forEach(usuario => {
                        let li = document.createElement("li");
                        li.textContent = "Usuario ID: " + usuario.usuario_id;
                        usuariosLista.appendChild(li);
                    });
                })
                .catch(error => console.error("Error al actualizar usuarios activos:", error));
        }

        // Actualizar cada 60 segundos
        setInterval(actualizarUsuariosActivos, 60000);



document.addEventListener("DOMContentLoaded", function() {
    // Seleccionamos todas las imágenes que deberían mostrar episodios
    var series = document.querySelectorAll('.serie .post_photo');

    series.forEach(function(serie) {
        serie.addEventListener("click", function() {
            // Busca el ul.eps dentro del contenedor de la imagen clicada
            var eps = this.parentElement.querySelector('.eps');
            if (eps) {
                eps.classList.toggle('ocultar');
            }
        });
    });
});


var verificacionsn = <?php echo json_encode(htmlspecialchars($usuario, ENT_QUOTES, 'UTF-8')); ?>;
console.log("User:", verificacionsn);

function abrir_peli(x){
    var peli = x;
    console.log(peli);

    if(peli != null){
    localStorage.setItem('movie', peli);
        window.location.href='./video.php';
    }
}

function guard_gen(h){
    var tipo = h;
    console.log(tipo);

    if(tipo != null){
    localStorage.setItem('tipo', tipo);
    }
}

const pelic = localStorage.getItem('pelicula');
console.log(pelic);

const welcoming = document.getElementById('contenedor_bienvenida');
var back_pic = document.getElementById('back_pic');
var iso_port = document.getElementById('iso_port');
welcoming.classList.add('flex');
back_pic.classList.add('ocultar');


function welc_port(y, j){
    var port = y;
    var iso = j;
    document.getElementById('back_pic').src = y;
    document.getElementById('iso_port').src = j;
    back_pic.classList.remove('ocultar');
    iso_port.classList.remove('ocultar');
    welcoming.classList.remove('flex');
    welcoming.classList.add('ocultar');
    console.log(port);
}


function welc_back_up(){
    welcoming.classList.remove('ocultar');
    welcoming.classList.add('flex');
    back_pic.classList.add('ocultar');
    iso_port.classList.add('ocultar');
}


function ver_eps(){
   back_pic.classList.remove('ocultar');
   welcoming.classList.remove('flex');
   welcoming.classList.add('ocultar');
}



</script>
</body>
<script>



document.addEventListener("DOMContentLoaded", function () {
            document.body.style.visibility = "visible"; // Show content
            setTimeout(() => {
                document.getElementById("loading-screen").style.opacity = "0";
                setTimeout(() => {
                    document.getElementById("loading-screen").style.display = "none";
                }, 500);
            }, 3000); // Adjust delay as needed
        });






    document.addEventListener("DOMContentLoaded", function() {
    const body = document.body;
    const logo = document.getElementById("isotipo");
    const buscar = document.getElementById("buscar");
    const def = document.getElementById("default");
    const lod = document.getElementById("loading");

    // Función para obtener el valor de la cookie
    function getCookie(name) {
        const cookies = document.cookie.split('; ');
        for (let i = 0; i < cookies.length; i++) {
            const [cookieName, cookieValue] = cookies[i].split('=');
            if (cookieName === name) {
                return cookieValue;
            }
        }
        return null;
    }
    
    console.log("Clases del body:", body.classList);

    let savedTheme = getCookie("theme") || "light"; // "light" por defecto si no hay cookie

    // Aplicar el tema guardado en la cookie
    body.classList.toggle("dark", savedTheme === "dark");
    body.classList.toggle("light", savedTheme === "light");

    // Cambiar imágenes según el tema
    logo.src = savedTheme === "dark" ? "../assets/isotipo_dark.png" : "../assets/isotipo.png";
    buscar.src = savedTheme === "dark" ? "../assets/dark/search.png" : "../assets/buscar.png";
    def.src = savedTheme === "dark" ? "../assets/dark/welcome.png" : "../assets/welcome.png";
    lod.src = savedTheme === "dark" ? "../assets/icono_dark.png" : "../assets/icon.png";
});

function getCookie(name) {
    const cookies = document.cookie.split('; ');
    for (let i = 0; i < cookies.length; i++) {
        const [cookieName, cookieValue] = cookies[i].split('=');
        if (cookieName === name) {
            return cookieValue;
        }
    }
    return null; // Retorna null si la cookie no existe
}

const theme = getCookie('theme');
console.log('El tema actual es:', theme);
</script>
</html>
