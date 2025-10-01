<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="../assets/icono.png" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../scripts/main.js"></script>
    <link rel="stylesheet" href="../styles/main.css">
    <link rel="manifest" href="../manifest.json">
    <title>UNRECORD | Movies</title>
</head>
<body>
<?php
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




<img onclick="busqueda()" id="buscar" src="../assets/buscar.png" alt="">
    <form id="form_search" action="/submit-form" method="post">
        <input id="search" type="text" name="" style="text-align: center;" placeholder="Busca una Película...">
    </form>
<img id="isotipo" src="../assets/isotipo.png" alt="">
<div id="perfil_container">
            <img id="verificado" src="../assets/Perfiles/Verificado.png" alt="">
            <img id="foto_perfil" src="<?php echo htmlspecialchars($rutaImagen, ENT_QUOTES, 'UTF-8'); ?>" alt="Foto de perfil">
</div>

<style>

    #venbenuti{
        display: flex;
        align-items: center;
        justify-content: center;
        margin-top: 2rem;
        margin-left: 0.5rem;
        height: fit-content;
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
    #portrait{
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        width: 80%;
        height: 20%;
        margin-top: 5rem;
    }
    #pelisplus{
        display: flex;
        flex-wrap: wrap;
        /* border: solid; */
        width: 100vw;
        /* margin-left: .4rem; */
        align-items: center;
        justify-content: center;
        height: fit-content;
        padding: 2rem;
        overflow-y: scroll;
    }
    @media(max-width: 550px){
    #pelisplus{
        padding: 1rem;
    }
    #venbenuti{
        margin-top: -2rem;
        margin-left: 0.5rem;
    }
    }

    </style>

<script>
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

<div id="container">

    <nav>
        <div>
        <div><img onclick="location.href='./home/home.php'" onmouseenter="this.src='../assets/home-black.png'" onmouseout="this.src='../assets/home-white.png'"src="../assets/home-white.png" alt=""></div>
        <div><img class="intro" src="../assets/video-dark.png" alt=""></div>
        <div><img class="study"  onclick="location.href='../pages/series.php'" onmouseenter="this.src='../assets/series-black.png'" onmouseout="this.src='../assets/series.png'"src="../assets/series.png" alt=""></div>
        <div><img class="knoledge"  onclick="location.href='../pages/discover.php'" onmouseenter="this.src='../assets/descubrir-dark.png'" onmouseout="this.src='../assets/Descubrir.png'"src="../assets/Descubrir.png" alt=""></div>
        </div>
    </nav>


    <div id="portrait">
        <div id="venbenuti">
         <img id='default' src='../assets/iso_movies.png' alt='Imagen del post'>
        </div>
    </div>
    <div id="pelisplus">
      <div id='post_container'>
          <img class="post_photo" id='post_sonic' name="Sonic 3" onmouseenter="welc_port('../assets/portadas/sonic3.jpg', '../assets/portadas/isotipo_sonic3.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/sonic3.MKV')" src='../assets/posters/sonic3.jpg' alt='Imagen del post'>
        </div>
      <div id='post_container'>
          <img class="post_photo" id='post_thegorg' name="El Abismo Secreto" onmouseenter="welc_port('../assets/portadas/thegorge.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/thegorge.mp4')" src='../assets/posters/thegorge.jpg' alt='Imagen del post'>
        </div>

        <div id='post_container'>
          <img class="post_photo" id='post_martinfierro' name="Martin Fierro" onmouseenter="welc_port('../assets/portadas/martinfierro_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/mf.mkv')" src='../assets/posters/martinfierro_poster.jpeg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_increibles' name="Los Increibles" onmouseenter="welc_port('../assets/portadas/increibles_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/inc.mkv')" src='../assets/posters/increibles_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_relatos_salvajes' name="Relatos Salvajes" onmouseenter="welc_port('../assets/portadas/relatos_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/relatos.mkv')" src='../assets/posters/relatos_poster.jpg' alt='Imagen del post'>
        </div>
                <div id='post_container'>
          <img class="post_photo" id='post_moana_2' name="Moana 2" onmouseenter="welc_port('../assets/portadas/moanados_portada.jpeg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/moanados.mp4')" src='../assets/posters/moanados_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_mufasa_rey_leon' name="Mufasa: El Rey Leon" onmouseenter="welc_port('../assets/portadas/mufasa_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/mufasa.mp4')" src='../assets/posters/mufasa_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_cordillera' name="La Cordillera" onmouseenter="welc_port('../assets/portadas/cordillera_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/cordillera.mp4')" src='../assets/posters/cordillera_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_gladiator2' name="Gladiador 2" onmouseenter="welc_port('../assets/portadas/gladiador2_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/gladiatordos.mkv')" src='../assets/posters/gladiador2_poster.jpg' alt='Imagen del post'>
        </div>
        <div id='post_container'>
          <img class="post_photo" id='post_naked_gun' name="Naked Gun" onmouseenter="welc_port('../assets/portadas/naked_gun_portada.jpg', '../assets/portadas/.webp')" onmouseout="welc_back_up()" onclick="abrir_peli('../movies/nakedgun.mp4')" src='../assets/posters/naked_gun_poster.jpg' alt='Imagen del post'>
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
</div>

<style>
    
</body>
</html>
