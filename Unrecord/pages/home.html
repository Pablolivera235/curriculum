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
<img onclick="busqueda()" id="buscar" src="<?php echo ($mode === 'dark') ? '../assets/dark/search.png' : '../assets/buscar.png'; ?>"alt="">
    <form id="form_search" action="/submit-form" method="post">
        <input id="search" type="text" name="" style="text-align: center;" placeholder="Busca una Película...">
    </form>
<img id="isotipo" src="<?php echo ($mode === 'dark') ? '../assets/isotipo_dark.png' : '../assets/isotipo.png'; ?>"alt="">
<div id="perfil_container">
            <img id="verificado" src="../assets/Perfiles/Verificado.png" alt="">
            <img id="foto_perfil" src="<?php echo htmlspecialchars($rutaImagen, ENT_QUOTES, 'UTF-8'); ?>" alt="Foto de perfil">
<script type="text/javascript">


    var unrec = document.getElementById('isotipo');
var srch = document.getElementById('form_search');
srch.classList.add('esconder');
unrec.classList.add('bloq');

function busqueda(){
   srch.classList.remove('esconder');
   srch.classList.add('bloq');
   unrec.classList.remove('bloq');
   unrec.classList.add('esconder');
}

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

    <div id="loading-screen">
        <img id="loading" style="width: 6rem;" src="<?php echo ($mode === 'dark') ? '../assets/icono_dark.png' : '../assets/icono.png'; ?>">
        <h4 style="opacity: 50%; color: gray; position: fixed; bottom: 5rem; font-size: 1rem;">by Pablo Olivera</h2>
    </div>

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

      <div id='post_container'>
          <img class="post_photo" id='post_sonic' name="Sonic 3" onmouseenter="welc_port('../assets/portadas/sonic3.jpg', '../assets/portadas/isotipo_sonic3.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/sonic3.MKV'), guard_gen('pelicula')" src='../assets/posters/sonic3.jpg' alt='Imagen del post'>
        </div>
      <div id='post_container'>
          <img class="post_photo" id='post_thegorg' name="El Abismo Secreto" onmouseenter="welc_port('../assets/portadas/thegorge.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/thegorge.mp4'), guard_gen('pelicula')" src='../assets/posters/thegorge.jpg' alt='Imagen del post'>
        </div>
      <div class="serie" id='post_container_serie'>
          <img class="post_photo" id='post_severance' name="Severance" onclick="ver_eps(), guard_gen('serie')" onmouseenter="welc_port('../assets/portadas/severance_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" src='../assets/posters/severance_poster.jpg' alt='Imagen del post'>
        </div>
        <div class="serie" id='post_container_serie'>
          <img class="post_photo" id='post_simuladores' name="Simuladores" onclick="ver_eps(), guard_gen('serie')" onmouseenter="welc_port('../assets/portadas/simuladores_portada.jpeg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" src='../assets/posters/simuladores_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_martinfierro' name="Martín Fierro" onmouseenter="welc_port('../assets/portadas/martinfierro_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/mf.mkv'), guard_gen('pelicula')" src='../assets/posters/martinfierro_poster.jpeg' alt='Imagen del post'>
        </div>
        <div class="serie" id='post_container_serie'>
          <img class="post_photo" id='post_tulsa' name="Tulsa_King" onclick="ver_eps(), guard_gen('serie')" onmouseenter="welc_port('../assets/portadas/tulsa_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" src='../assets/posters/tulsa_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_increibles' name="Los Increibles" onmouseenter="welc_port('../assets/portadas/increibles_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/inc.mkv'), guard_gen('pelicula')" src='../assets/posters/increibles_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_relatos_salvajes' name="Relatos Salvajes" onmouseenter="welc_port('../assets/portadas/relatos_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/relatos.mkv'), guard_gen('pelicula')" src='../assets/posters/relatos_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_moana_2' name="Moana 2" onmouseenter="welc_port('../assets/portadas/moanados_portada.jpeg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/moanados.mp4'), guard_gen('pelicula')" src='../assets/posters/moanados_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_mufasa_rey_leon' name="Mufasa: El Rey León" onmouseenter="welc_port('../assets/portadas/mufasa_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/mufasa.mp4'), guard_gen('pelicula')" src='../assets/posters/mufasa_poster.jpg' alt='Imagen del post'>
        </div>

        <div class="serie" id='post_container_serie'>
          <img class="post_photo" id='post_envidiosa' name="Envidiosa" onclick="ver_eps(), guard_gen('serie')" onmouseenter="welc_port('../assets/portadas/envidiosa_portada.jpeg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" src='../assets/posters/envidiosa_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_cordillera' name="La Cordillera" onmouseenter="welc_port('../assets/portadas/cordillera_portada.png', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/cordillera.mp4'), guard_gen('pelicula')" src='../assets/posters/cordillera_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_gladiator2' name="Gladiador 2" onmouseenter="welc_port('../assets/portadas/gladiador2_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/gladiatordos.mkv'), guard_gen('pelicula')" src='../assets/posters/gladiador2_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_naked_gun' name="Naked Gun" onmouseenter="welc_port('../assets/portadas/naked_gun_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/nakedgun.mp4'), guard_gen('pelicula')" src='../assets/posters/naked_gun_poster.jpg' alt='Imagen del post'>
        </div>
        <div class="serie" id='post_container_serie'>
          <img class="post_photo" id='post_from' name="From" onclick="ver_eps(), guard_gen('serie')" onmouseenter="welc_port('../assets/portadas/envidiosa_portada.jpeg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" src='../assets/posters/from_posters.jpg' alt='Imagen del post'>
        </div>
        <div class="serie" id='post_container_serie'>
          <img class="post_photo" id='post_reacher' name="Reacher" onclick="ver_eps(), guard_gen('serie')" onmouseenter="welc_port('../assets/portadas/envidiosa_portada.jpeg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" src='../assets/posters/reacher_poster.jpg' alt='Imagen del post'>
        </div>
        <div class="serie" id='post_container_serie'>
          <img class="post_photo" id='post_tlou' name="The_Last_Of_Us" onclick="ver_eps(), guard_gen('serie')" onmouseenter="welc_port('../assets/portadas/envidiosa_portada.jpeg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" src='../assets/posters/tlou_poster.webp' alt='Imagen del post'>
        </div>
                <div id='post_container'>
          <img class="post_photo" id='post_nok' name="Paranormal Activity 6" onmouseenter="welc_port('../assets/portadas/naked_gun_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/nok.mp4')" src='../assets/posters/nok_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_markedones' name="Paranormal Activity 4" onmouseenter="welc_port('../assets/portadas/naked_gun_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/markedones.mkv')" src='../assets/posters/markedones_poster.webp' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_dim_desc' name="Paranormal Activity 3" onmouseenter="welc_port('../assets/portadas/naked_gun_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/dim_desc.mp4')" src='../assets/posters/dimension_desc_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_elec_state' name="The Electric State" onmouseenter="welc_port('../assets/portadas/naked_gun_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/electric_state.mkv')" src='../assets/posters/electric_state_poster.jpeg' alt='Imagen del post'>
        </div>
        <div class="serie" id='post_container_serie'>
          <img class="post_photo" id='post_yj' name="Yellowjackets" onclick="ver_eps(), guard_gen('serie')" onmouseenter="welc_port('../assets/portadas/envidiosa_portada.jpeg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" src='../assets/posters/yellowjackets_poster.jpeg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_elec_DSports' name="DSports" onmouseenter="welc_port('../assets/portadas/naked_gun_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="window.location.href ='./tv_vivo.html';" src='../assets/posters/dsports.jpg' alt='Imagen del post'>
        </div>

        <div id="The_Last_Of_Us" class="content">
            <div class="infoBox">
            <h1>The Last Of Us</h1>
            <h3>Drama - 2023</h3>
            <div>
            <p>Serie posapocalíptica inspirada en el aclamado videojuego que sigue la brutal y desgarradora travesía de un hombre cínico y una joven de 14 años.</p>
            </div>
        </div>
        <img id="salir_serie" src="../assets/back-black.png">
        <img id="ser_post_pop" src="../assets/posters/tlou_poster.webp">
        <div id="características_tecnicas">
            <img class="about_img" id="about_img" src="../assets/about.png">
            <img src="../assets/hd.png">
            <img src="../assets/dolby.png">
            <button id="temp">Temporadas</button>
        </div>
        <button id="ser_ver" onclick="abrir_peli('../movies/tlou/s1/tlou0101.mp4'), guard_gen('serie')"> VER AHORA </button>
        <ul class="epis">
            <li onclick="abrir_peli('../movies/tlou/s1/tlou0101.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/tlou_portada.jpeg"> 
                <div>
                 <h1>1.Perdido en la Oscuridad</h1>
                 <p> Veinte años después de que un brote de hongos azote el planeta, a los sobrevivientes Joel y Tess les es asignada una misión que podría cambiarlo todo.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tlou/s1/tlou0102.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/tlou_portada.jpeg"> 
                <div>
                 <h1>2.Infectados</h1>
                 <p>Tras escapar de la zona de cuarentena, Joel y Tess discuten sobre el destino de Ellie mientras atraviesan las ruinas de Boston.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tlou/s1/tlou0103.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/tlou_portada.jpeg"> 
                <div>
                 <h1>3.Mucho, Mucho Tiempo</h1>
                 <p>Cuando un extraño se acerca al recinto de Bill, un aficionado en preparativos para escenarios apocalípticos, ambos forjan una conexión poco probable.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tlou/s1/tlou0104.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/tlou_portada.jpeg"> 
                <div>
                 <h1>4. Por Favor, Toma mi Mano</h1>
                 <p>CDespués de abandonar su camioneta en Kansas City, Joel y Ellie intentan escapar sin llamar la atención de una vengativa líder rebelde.</p>   
                </div> 
            </li>
            <li onclick="abrir_peli('../movies/tlou/s1/tlou0105.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/tlou_portada.jpeg"> 
                <div>
                 <h1>5. Resistir y Sobrevivir</h1>
                 <p>Mientras intentan evadir a los rebeldes, Joel y Ellie se cruzan con el hombre más buscado de Kansas City. Kathleen continúa su persecución.</p>   
                </div> 
            </li>
        </ul>
        </div>



        <div id="Severance" class="content">
        <div class="infoBox">
            <h1>Severance</h1>
            <h3>Thriller - 2022</h3>
            <div>
            <p>Serie ganadora del emmy del director Ben Stiller, Mark
            lidera un equipo de oficinistas cuyos recuerdos se han dividido quirurgicamente entre su trabajo y su vida personal. Emprenden un viaje para descubrir la verdad sobre sus trabajops y sobre ellos mismos</p>
            </div>
        </div>
        <img id="salir_serie" src="../assets/back-black.png">
        <img id="ser_post_pop" src="../assets/posters/severance_poster.jpg">
        <div id="características_tecnicas">
            <img class="about_img" id="about_img" src="../assets/about.png">
            <img src="../assets/hd.png">
            <img src="../assets/dolby.png">
            <button id="temp">Temporadas</button>
        </div>
        <button id="ser_ver" onclick="abrir_peli('../movies/severance/severance0201.mkv'), guard_gen('serie')"> VER AHORA </button>
        <ul class="epis">
            <li onclick="abrir_peli('../movies/severance/severance0201.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/severance_portada.jpg"> 
                <div>
                 <h1>1.Hola, señora Cobel</h1>
                 <p> Mark vuelve al trabajo, pero las circunstancias han cambiado. Salen a la luz secretos del mundo exterior.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/severance/severance0202.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/severance_portada.jpg"> 
                <div>
                 <h1>2.Adiós, señora Selvig</h1>
                 <p>El fueri de Mark se plantea el significado de un mensaje. Lumon se enfrenta a las consecuencias de la Contingencia de Horas Extra.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/severance/severance0203.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/severance_portada.jpg"> 
                <div>
                 <h1>3.¿Quién está vivo?</h1>
                 <p>Mark y Helly regresan a un antiguo refugio. Irving y Dylan hacen averiguaciones por separado. El fueri de Mark prueba algo nuevo.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/severance/severance0204.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/severance_portada.jpg"> 
                <div>
                 <h1>4.El abismo de Aflicción</h1>
                 <p>El equipo atraviesa un terreno desconocido. Mark y Helly exploran sus sentimientos. Irving desconfía cada vez más de un amigo.</p>   
                </div> 
            </li>

        </ul>
        </div>

        <div id="Reacher" class="content">
         <div class="infoBox">
            <h1>Reacher</h1>
            <h3>Acción - 2022</h3>
            <div>
            <p>Cuando el ex-oficial de la policía militar, Jack Reacher, es arrestado por un homicidio que no cometió, se da cuenta de que está en medio de una conspiración. Solo con su inteligencia, debe descubrir lo que sucede en Margrave, Georgia. La primera temporada de Reacher está basada en el best seller, Zona Peligrosa, de Lee Child.</p>
            </div>
        </div>           
        <img id="salir_serie" src="../assets/back-black.png">
        <img id="ser_post_pop" src="../assets/posters/reacher_poster.jpg">
        <div id="características_tecnicas">
            <img class="about_img" id="about_img" src="../assets/about.png">
            <img src="../assets/hd.png">
            <img src="../assets/dolby.png">
            <button id="temp">Temporadas</button>
        </div>
        <button id="ser_ver" onclick="abrir_peli('../movies/reacher/s1/reacher0101.mp4'), guard_gen('serie')"> VER AHORA </button>
        <ul class="epis">
            <li onclick="abrir_peli('../movies/reacher/s1/reacher0101.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/reacher_portada.webp"> 
                <div>
                 <h1>1.Bienvenidos a margrave</h1>
                 <p>Reacher es injustamente acusado de homicidio mientras visitaba el pequeño pueblo de Margrave, Gerogia.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/reacher/s1/reacher0102.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/reacher_portada.webp"> 
                <div>
                 <h1>2.Primer baile</h1>
                 <p>Cuando más víctimas son descubiertas, Reacher intenta obtener respuestas, pero le tienden una trampa. Roscoe recibe un mensaje amenazante.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/reacher/s1/reacher0103.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/reacher_portada.webp"> 
                <div>
                 <h1>3.Cucharada</h1>
                 <p>La investigación de Reacher y Finlay sobre la desaparición de Spivey los lleva a confrontar a Kilner. Roscoe recibe inquietantes noticias sobre Reacher.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/reacher/s1/reacher0104.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/reacher_portada.webp"> 
                <div>
                 <h1>4.Un arbol</h1>
                 <p>Mientras el peligro aumenta, Reacher y Roscoe se hacen más cercanos y hacen planes para encontrarse con su contacto de Seguridad Nacional.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/reacher/s1/reacher0105.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/reacher_portada.webp"> 
                <div>
                 <h1>5.Sin disculpas</h1>
                 <p>Mientras el misterio crece, Reacher hace equipo con una antigua colega y Finlay hace un descubrimiento estremecedor.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/reacher/s1/reacher0106.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/reacher_portada.webp"> 
                <div>
                 <h1>6.Papel</h1>
                 <p>Cuando el pueblo es agitado con otro asesinato, Reacher viaja a Nueva York y se entera de la verdad sobre el negocio ilegal en Margrave mientras que Roscoe enfrenta un ataque en el bosque.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/reacher/s1/reacher0107.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/reacher_portada.webp"> 
                <div>
                 <h1>7.Reacher no habló</h1>
                 <p>Reacher prepara una trampa y es él quien es atrapado.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/reacher/s1/reacher0108.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/reacher_portada.webp"> 
                <div>
                 <h1>8.Pay</h1>
                 <p>Reacher dirige una misión de rescate en la bodega y termina en un enfretnamiento.</p>   
                </div> 
            </li>


        </ul>
        </div>

<div id="Simuladores" class="content">
        <div class="infoBox">
            <h1>Los Simuladores</h1>
            <h3>Comedia - 2002</h3>
            <div>
            <p>Un grupo Comando especializado formado por 4 hombres, que son contratados por alguien que les presenta un problema y quiere una solución. Elaboran diferentes operaciones, simulando roles, según el problema, con el fin de resolverlo.</p>
            </div>
        </div>       
        <img id="salir_serie" src="../assets/back-black.png">
        <img id="ser_post_pop" src="../assets/posters/simuladores_poster.jpg">
        <div id="características_tecnicas">
            <img class="about_img" id="about_img" src="../assets/about.png">
            <img src="../assets/hd.png">
            <img src="../assets/dolby.png">
            <button id="temp">Temporadas</button>
        </div>
        <button id="ser_ver" onclick="abrir_peli('../movies/simuladores/s1/simuladores0101.mp4'), guard_gen('serie')"> VER AHORA </button>
        <ul class="epis">
            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0101.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>1.Tarjeta de Navidad</h1>
                 <p>El grupo ayuda a una pareja desesperada a volver a estar juntos</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0102.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>2.Diagnóstico rectoscópico</h1>
                 <p>Un dueño de un locutorio se endeuda con un mafioso que amenaza con matar a sus hijos si no le paga pronto.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0103.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>3.Seguro de desempleo</h1>
                 <p>Un empleado de una lechería es despedido por ser ya mayor. Incapaz de encontrar otro trabajo por su edad, pide ayuda a los Simuladores para conservar su puesto</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0104.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>4.El testigo español</h1>
                 <p>Una mujer es acosada por un amante extranjero que conoció en Miami, poniendo en riesgo su matrimonio. Los simuladores recrean conspiración policíaca para espantarlo del país.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0105.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>5.El joven simulador</h1>
                 <p>El hijo de un arquitecto está a punto de repetir de año podría empeorar la situación. Los simuladores deberán ayudarlo a aprobar 7 exámenes para poder pasar de año.</p>   
                </div>
            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0106.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>6.El pequeño problema </h1>
                 <p>El Presidente tiene disfunción erectil y es incapaz de complacer a su mujer. Ella contrata a los simuladores para que lo ayuden a recuperar sus habilidades en la cama.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0107.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>7.Fuera de cálculo</h1>
                 <p>Un operativo montado por los Simuladores en un banco es interrumpido por un robo. El grupo deberá ayudar a los ladrones luego de descubrir que el jefe comisario es corupto.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0108.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>8.El pacto Copérnico</h1>
                 <p>Un abogado contrata la ayuda de los simuladores para que su mujer se enamore de alguien más, y Hacen creer a un hombre que es la clave en un plan de los Nazis.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0109.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>9.El último héroe</h1>
                 <p>Un hombre estafa a una familia de clase baja. Ellos tratarán de recuperar lo perdido contratando a los Simuladores.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0110.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>10.Los impresentables</h1>
                 <p>Una mujer pide ayuda a los Simuladores cuando debe presentar su familia "impresentable" a la familia de su novio.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0111.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>11.El colaborador foráneo</h1>
                 <p>Crucitti is a corrupt sheriff on a non-specified city of Buenos Aires. The group of "Los Simuladores" will make him change.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0112.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>12.Marcela & Pau</h1>
                 <p>El grupo ayuda a una mujer recientemente divorciada a recuperar su amor propio y ganas de vivir, organizándole una cena con el que ella piensa es el auténtico Paul McCartney.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/simuladores/s1/simuladores0113.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/simuladores_portada.jpeg"> 
                <div>
                 <h1>13.Un trabajo involuntario</h1>
                 <p>Los Simuladores son extorsionados para hacer un trabajo a cambio de la vida de Santos.</p>   
                </div> 
            </li>
        </ul>
    </div> 

        <div id="From" class="content">
        <div class="infoBox">
            <h1>From</h1>
            <h3>Terror - 2022</h3>
            <div>
            <p>Serie sobre un misterioso y terrorífico pueblo que atrapa a todas aquellas personas que lo visitan y sobre los habitantes que se ven obligados a vivir allí mientras buscan una salida.</p>
            </div>
        </div>      
        <img id="salir_serie" src="../assets/back-black.png">
        <img id="ser_post_pop" src="../assets/posters/from_posters.jpg">
        <div id="características_tecnicas">
            <img class="about_img" id="about_img" src="../assets/about.png">
            <img src="../assets/hd.png">
            <img src="../assets/dolby.png">
            <button id="temp">Temporadas</button>
        </div>
        <button id="ser_ver" onclick="abrir_peli('../movies/from/s1/from0101.mp4'), guard_gen('serie')"> VER AHORA </button>
        <ul class="epis">
            <li onclick="abrir_peli('../movies/from/s1/from0101.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg"> 
                <div>
                 <h1>1. El viaje del día a la noche</h1>
                 <p>El viaje por carretera de los Matthew da un macabro giro cuando se desvían y llegan a un pueblo del que no pueden salir.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/from/s1/from0102.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg"> 
                <div>
                 <h1>2. Cómo son las cosas ahora</h1>
                 <p>Tabitha y Julie se adaptan a la terrible realidad en Colony House. En el bosque, Jim, Boyd y Kristi tienen problemas para tratar a Ethan.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/from/s1/from0103.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg"> 
                <div>
                 <h1>3. El día de la elección</h1>
                 <p>La familia Matthew debe escoger a qué asentamiento se unirán. Mientras tanto, Jade acepta su situación y Boyd debe tomar una decisión muy difícil</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/from/s1/from0104.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg"> 
                <div>
                 <h1>4. Una roca y una lejanía</h1>
                 <p>Julie se refugia en sus nuevos amigos. Jim y Tabitha lidian con los problemas de su matrimonio. Ethan y Victor se adentran en el bosque.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/from/s1/from0105.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg"> 
                <div>
                 <h1>5. Siluetas</h1>
                 <p>Jim, Tabitha e Ethan hacen preguntas sobre el lugar con la esperanza de regresar. Ellis y Fatima le muestran a Julie la parte divertida del pueblo.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/from/s1/from0106.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg"> 
                <div>
                 <h1>6. Libro 74</h1>
                 <p>Jade le pide ayuda a Jim con un experimento, mientras Tabitha descubre algo escalofriante que hace que busque respuestas en un lugar único.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/from/s1/from0107.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg"> 
                <div>
                 <h1>7. Todas las cosas buenas</h1>
                 <p>Jim y Tabitha se consuelan el uno al otro. Colony House celebra el primer aniversario de la llegada de Fatima con una fiesta que sale muy mal.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/from/s1/from0108.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg"> 
                <div>
                 <h1>8. Ventanas,puertas abiertas</h1>
                 <p>Kenny acepta su nuevo rol. Jim propone construir una torre de telecomunicaciones. Fatima le pide a Ellis que arregle las cosas con su padre.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/from/s1/from0109.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg">  
                <div>
                 <h1>9. En los bosques</h1>
                 <p>Boyd y Sara se adentran en el bosque y se encuentran más misterios terroríficos. Jim empieza a perder la confianza en la torre de telecomunicaciones.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/from/s1/from0110.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/from_portada.jpeg"> 
                <div>
                 <h1>10.los sitios donde iremos</h1>
                 <p>Boyd encuentra fuerza en algo inesperado. El agujero que Tabitha está cavando lleva a un lugar, y a una persona, que no esperaba. Todo cambiará.</p>   
                </div> 
            </li>
        </ul>
        </div>

        <div id="Envidiosa" class="content">
        <div class="infoBox">
            <h1>Envidiosa</h1>
            <h3>Drama - 2024</h3>
            <div>
            <p>Vicky es una mujer de 40 años que ve a sus amigas casarse antes que ella. Harta de la situación, le da un ultimátum a su novio de toda la vida: se casan o se separan. Sin embargo, nada sucede como ella esperaba.</p>
            </div>
        </div>      
        <img id="salir_serie" src="../assets/back-black.png">
        <img id="ser_post_pop" src="../assets/posters/envidiosa_poster.jpg">
        <div id="características_tecnicas">
            <img class="about_img" id="about_img" src="../assets/about.png">
            <img src="../assets/hd.png">
            <img src="../assets/dolby.png">
            <button id="temp">Temporadas</button>
        </div>
        <button id="ser_ver" onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0101.mp4'), guard_gen('serie')"> VER AHORA </button>
        <ul class="epis">
            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0201.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>1.Choque de frente</h1>
                 <p>Los sueños de Vicky están a punto de hacerse realidad, pero un ataque de pánico la lleva a reflexionar no solo sobre qué quiere, sino también a quién...</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0202.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>2.Quien dice el doble</h1>
                 <p>Luego de una confrontación con Nico que despierta emociones difíciles, Vicky reconsidera el vínculo que tuvo con Matías. Mientras tanto, Caro se hace una ecografía.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0203.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>3. Hay un hueco</h1>
                 <p>La invitación de Matías confunde a Vicky, que lucha por ordenar su caos de emociones y conflictos internos. Él, entre tanto, abre los ojos... y comienza a ver a Mei.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0204.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>4.La secta</h1>
                 <p>Un encuentro sorpresa con Debbie altera por completo la escapada romántica de Vicky y Daniel. Matías da un paso importante en su relación con Mei.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0205.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>5.Viajar en priemra</h1>
                 <p>Vicky intenta navegar las aguas de la soltería, pero, cuando su camino se cruza con el de Matías durante una noche de chicas, las emociones ocultas amenazan con salir a la luz.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0206.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>6.Ninja del amor</h1>
                 <p>Una mañana incómoda con Matías confunde todavía más a Vicky. Luego de una evaluación laboral, sus inseguridades se profundizan.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0207.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>7.Pata o muslo</h1>
                 <p>En la casa de Caro, en el campo, Vicky se ve obligada a confrontar su lado más oscuro. Matías, por otra parte, intenta planear una fiesta sorpresa de cumpleaños para Mei.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0208.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>8.Segundo Francia</h1>
                 <p>Vicky se defiende cuando Matías le pide espacio y, tras una visita al hospital, adquiere una nueva perspectiva. El nuevo romance de Meli genera un frenesí mediático.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0209.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>9.Mindo de casualidades</h1>
                 <p>Luego de una charla con Daniel, Vicky queda desconcertada, intentando asimilar las consecuencias de sus actos. Mei le pregunta a Matías acerca de sus sentimientos por Vicky.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0210.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>10.Lisenciada en maternidad</h1>
                 <p>Matías intenta ser honesto con Mei, mientras Vicky, Caro y las chicas tienen una peculiar sesión con una doula. El estrés del día le pasa factura a Caro.</p>   
                </div> 
            </li>
            <li onclick="abrir_peli('../movies/envidiosa/s1/envidiosa0211.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/envidiosa_portada.jpeg"> 
                <div>
                 <h1>11.Desayuno perfecto</h1>
                 <p>Un momento único trae alegría ¡y pánico! Matías y Mei tienen una conversación sincera, y las dudas atormentan a Vicky. ¿Podrá abrirle su corazón a Matías antes de que sea tarde?</p>   
                </div> 
            </li>
        </ul>
        </div>
         <div id="Tulsa_King" class="content">
        <div class="infoBox">
            <h1>Tulsa King</h1>
            <h3>Acción - 2022</h3>
            <div>
            <p>Tras su liberación de prisión, el capo de la mafia Dwight "El General" Manfredi es exiliado a Tulsa, Oklahoma, donde construye un nuevo imperio criminal con un grupo de personajes inverosímiles.</p>
            </div>
        </div> 
        <img id="salir_serie" src="../assets/back-black.png">
        <img id="ser_post_pop" src="../assets/posters/tulsa_poster.jpg">
        <div id="características_tecnicas">
            <img class="about_img" id="about_img" src="../assets/about.png">
            <img src="../assets/hd.png">
            <img src="../assets/dolby.png">
            <button id="temp">Temporadas</button>
        </div>
        <button id="ser_ver" onclick="abrir_peli('../movies/tulsaking/s2/tulsa0201.mkv'), guard_gen('serie')"> VER AHORA </button>
        <ul class="epis">
            <li onclick="abrir_peli('../movies/tulsaking/s2/tulsa0201.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/tulsa_portada.jpg"> 
                <div>
                 <h1>1. Vete al cielo, viejo</h1>
                 <p>El viaje por carretera de los Matthew da un macabro giro cuando se desvían y llegan a un pueblo del que no pueden salir.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tulsaking/s2/tulsa0202.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/tulsa_portada.jpg"> 
                <div>
                 <h1>2. El centro del universo</h1>
                 <p>Tabitha y Julie se adaptan a la terrible realidad en Colony House. En el bosque, Jim, Boyd y Kristi tienen problemas para tratar a Ethan.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tulsaking/s2/tulsa0203.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/tulsa_portada.jpg"> 
                <div>
                 <h1>3. Capincho</h1>
                 <p>La familia Matthew debe escoger a qué asentamiento se unirán. Mientras tanto, Jade acepta su situación y Boyd debe tomar una decisión muy difícil</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tulsaking/s2/tulsa0204.mp4'), guard_gen('serie')">
                <img src="../assets/portadas/tulsa_portada.jpg"> 
                <div>
                 <h1>4. La cisita</h1>
                 <p>Julie se refugia en sus nuevos amigos. Jim y Tabitha lidian con los problemas de su matrimonio. Ethan y Victor se adentran en el bosque.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tulsaking/s2/tulsa0205.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/tulsa_portada.jpg"> 
                <div>
                 <h1>5. Adios, Joe</h1>
                 <p>Jim, Tabitha e Ethan hacen preguntas sobre el lugar con la esperanza de regresar. Ellis y Fatima le muestran a Julie la parte divertida del pueblo.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tulsaking/s2/tulsa0206.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/tulsa_portada.jpg"> 
                <div>
                 <h1>6. El establo</h1>
                 <p>Jade le pide ayuda a Jim con un experimento, mientras Tabitha descubre algo escalofriante que hace que busque respuestas en un lugar único.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tulsaking/s2/tulsa0207.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/tulsa_portada.jpg"> 
                <div>
                 <h1>7. Los territorios</h1>
                 <p>Jim y Tabitha se consuelan el uno al otro. Colony House celebra el primer aniversario de la llegada de Fatima con una fiesta que sale muy mal.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tulsaking/s2/tulsa0208.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/tulsa_portada.jpg"> 
                <div>
                 <h1>8. Los muros</h1>
                 <p>Kenny acepta su nuevo rol. Jim propone construir una torre de telecomunicaciones. Fatima le pide a Ellis que arregle las cosas con su padre.</p>   
                </div> 
            </li>

            <li onclick="abrir_peli('../movies/tulsaking/s2/tulsa0209.mkv'), guard_gen('serie')">
                <img src="../assets/portadas/tulsa_portada.jpg">  
                <div>
                 <h1>9. Buen viaje</h1>
                 <p>Boyd y Sara se adentran en el bosque y se encuentran más misterios terroríficos. Jim empieza a perder la confianza en la torre de telecomunicaciones.</p>   
                </div> 
            </li>
        </ul>
        </div>



</div>

<script>




            document.addEventListener("DOMContentLoaded", function() {
            document.querySelectorAll(".content").forEach(div => div.style.display = "none");
                });

        document.querySelectorAll('img[name]').forEach(img => {
            img.addEventListener("click", function() {
                let nameValue = this.getAttribute("name"); // Obtiene el valor del atributo name
        
                // Oculta todos los divs con clase "content"
                document.querySelectorAll(".content").forEach(div => div.style.display = "none");

                // Busca un div cuyo id coincida con el name de la imagen
                let targetDiv = document.getElementById(nameValue);
                if (targetDiv) {
                    targetDiv.style.display = "flex"; // Muestra el div correspondiente

                    // Encuentra el botón salir_serie dentro de este div y añade el evento de cierre
                    let closeButton = targetDiv.querySelector("#salir_serie");
                    if (closeButton) {
                        closeButton.addEventListener("click", function() {
                            targetDiv.style.display = "none"; // Oculta el div al hacer clic en salir_serie
                        });
                    }
                }
            });
        });




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
