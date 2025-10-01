<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../scripts/main.js"></script>
    <title>Unrecord | Player</title>
</head>
<body>
<?php
session_start();
?>

<div id="contenedor">
    <video id="mi-video" autoplay>
        <source id='videom' alt='Imagen del post' type='video/mp4'>
        <audio id="aud" autoplay controls> </audio>
    </video>

    <div id="container_buttons">
        <img id="back" src="../assets/volver.png">
        <img id="hamb" src="../assets/ham.png">
        <div id="epsel">
            <img id="cerrar" src="../assets/volver.png">
<script> 
       const serieid = localStorage.getItem('serieid');
       console.log(serieid);
    window.onload = function() {
    const urlParams = new URLSearchParams(window.location.search);
    if (!urlParams.has('serieid')) {
        window.location.href = window.location.pathname + '?serieid=' + encodeURIComponent(serieid);
    }
}
</script>
<?php
// --- SOLO PARA DEBUG ---
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
// --- FIN DEBUG ---

$conn = new mysqli("localhost", "Pablolivera235", "Eljavi.o01", "unrecord");
if ($conn->connect_error) {
    // En un entorno de producción, podrías querer registrar este error en lugar de mostrarlo directamente.
    die("Conexión fallida: " . $conn->connect_error);
}



// Procesar la solicitud POST enviada por fetch
$serie_id = isset($_GET['serieid']) ? $_GET['serieid'] : null;

//serie_id = "36";.

// Obtener la serie seleccionada (Opcional si solo necesitas los capítulos)
// Asegúrate de que la columna 'id' en tu tabla 'series' pueda almacenar cadenas como 'YellowJackets' (ej. VARCHAR)
// Si 'id' es un entero y 'YellowJackets' es el nombre, necesitarías buscar primero el ID entero basado en el nombre.
$stmt_serie = $conn->prepare("SELECT * FROM series WHERE id = ?");
if ($stmt_serie === false) {
    die("Error al preparar la consulta de series: " . $conn->error);
}
// Usa "s" para string (cadena)
$stmt_serie->bind_param("s", $serie_id);
$stmt_serie->execute();
$serie_result = $stmt_serie->get_result();
$serie_data = $serie_result->fetch_assoc(); // Esta variable no se usa después, pero la consulta puede servir para validar que la serie existe.

if (!$serie_data) {
    // Opcional: Manejar el caso en que la serie no se encuentre.
    // Podrías mostrar un mensaje o simplemente no mostrar capítulos.
    // echo "<p>Serie no encontrada.</p>";
    // Si la serie no existe, probablemente tampoco habrá capítulos.
}

$stmt_serie = $conn->prepare("SELECT isotipo FROM series WHERE id = ?");
if ($stmt_serie === false) {
    die("Error al preparar la consulta de series: " . $conn->error);
}
// Usa "s" para string (cadena)
$stmt_serie->bind_param("s", $serie_id);
$stmt_serie->execute();
$isotipo_result = $stmt_serie->get_result();
$isotipo = $isotipo_result->fetch_assoc();

// Obtener los capítulos de la serie
// Asegúrate de que la columna 'nombre_id' en tu tabla 'capitulos' corresponda al tipo y valor de 'id' en 'series'.
$stmt_capitulos = $conn->prepare("SELECT * FROM capitulos WHERE nombre_id = ?");
if ($stmt_capitulos === false) {
    die("Error al preparar la consulta de capítulos: " . $conn->error);
}
// Usa "s" para string (cadena)
$stmt_capitulos->bind_param("s", $serie_id);
$stmt_capitulos->execute();
$capitulos_result = $stmt_capitulos->get_result();

// Construimos la respuesta HTML que se insertará.
// El <div> contenedor (<div id="epsel">) y la imagen de cerrar están fuera de este bloque PHP en el HTML.
// Así que aquí solo generamos la lista <ul>.
ob_start();

if ($capitulos_result->num_rows > 0): ?>
<img id="isotipo_png" src='<?= htmlspecialchars($isotipo['isotipo'], ENT_QUOTES, 'UTF-8') ?>'>
<h3 style="color: white; padding: 2rem;" id="nombrecap">
<script>
    const episodename = localStorage.getItem('epname');
    console.log(`Episodio: ${episodename}`);
    document.getElementById("nombrecap").textContent = episodename;
</script>
</h3>
    <ul class="epis">
        <?php while ($capitulo = $capitulos_result->fetch_assoc()): ?>
            <li onclick="abrir_peli('<?= htmlspecialchars($capitulo['url'], ENT_QUOTES, 'UTF-8') ?>'), guard_gen('serie')">
                <img src="<?= str_replace('../../assets', '../assets', htmlspecialchars($capitulo['caratula'], ENT_QUOTES, 'UTF-8')) ?>" alt="Carátula de <?= htmlspecialchars($capitulo['nombre'], ENT_QUOTES, 'UTF-8') ?>">
                <div>
                    <h1><?= htmlspecialchars($capitulo['nombre'], ENT_QUOTES, 'UTF-8') ?></h1>
                    <p><?= htmlspecialchars($capitulo['info'], ENT_QUOTES, 'UTF-8') ?></p>
                </div>
            </li>
        <?php endwhile; ?>
    </ul>
<?php else: ?>
    <p style="color: white; text-align: center; padding-top: 20px;">No hay capítulos disponibles para esta serie.</p>
<?php endif;


?>
        </div>
        <span id="tiempoActual">00:00</span>
        <div id="barra-progreso" class="barra-progreso">
            <div id="progreso" class="progreso"></div>
        </div>
        <img id="fullscreen" src="../assets/fullsc.png" onclick="activarFullscreen()">
        <img id="botonPausa" src="../assets/pause.png" onclick="togglePlayPause()">
        <img id="retroceder" src="../assets/rewind.png" onclick="retroceder30s()">
        <img id="adelantar" src="../assets/forward.png" onclick="adelantar30s()">
        <button id="siguiente">Siguiente</button>
    </div>

    <script>
        // Obtener elementos del video y la barra de progreso
        const video = document.getElementById('mi-video');
        const progreso = document.getElementById('progreso');
        const botonPausa = document.getElementById('botonPausa');
        const imagen = document.getElementById("container_buttons"); // Obtener el contenedor de botones
        const epselDiv = document.getElementById('epsel');
        const hambImg = document.getElementById('hamb');
        const cerrarImg = document.getElementById('cerrar');

        let intervaloDeActualizacion;
        let ocultarInterval; // Variable para almacenar el intervalo de ocultado

        // Función para alternar entre pausar y reproducir el video
        function togglePlayPause() {
            if (video.paused) {
                video.play(); // Reproducir video
                botonPausa.src = "../assets/pause.png"; // Cambiar texto del botón
                iniciarActualizacionBarra();
            } else {
                video.pause(); // Pausar video
                botonPausa.src = "../assets/play.png"; // Cambiar texto del botón
                clearInterval(intervaloDeActualizacion);
            }
        }

        // Función para actualizar la barra de progreso en tiempo real
        function actualizarBarraProgreso() {
            const porcentaje = (video.currentTime / video.duration) * 100;
            progreso.style.width = porcentaje + '%';
        }

        // Iniciar la actualización de la barra cuando el video se reproduce
        function iniciarActualizacionBarra() {
            clearInterval(intervaloDeActualizacion);
            intervaloDeActualizacion = setInterval(actualizarBarraProgreso, 100);
        }

        const barraProgreso = document.getElementById('barra-progreso');

        barraProgreso.addEventListener('click', (event) => {
            const rect = barraProgreso.getBoundingClientRect(); // Tamaño y posición de la barra
            const offsetX = event.clientX - rect.left; // Posición del clic dentro de la barra
            const porcentaje = offsetX / rect.width; // Porcentaje en el que se hizo clic
            video.currentTime = porcentaje * video.duration; // Mueve el video a ese punto
        });

        // Escuchar eventos del video para actualizar la barra de progreso
        video.addEventListener('timeupdate', actualizarBarraProgreso);


        function ocultarImagen() {
            imagen.classList.add("oculto");
        }

        function mostrarImagen() {
            imagen.classList.remove("oculto");
        }

        // Ocultar cada 5 segundos (modificado a petición)
        ocultarInterval = setInterval(ocultarImagen, 5000);

        // Mostrar al hacer clic en el div del video
        video.addEventListener("mousemove", mostrarImagen);

        // Escuchar eventos del video para sincronizar la barra de progreso
        video.addEventListener('play', iniciarActualizacionBarra);
        video.addEventListener('pause', () => clearInterval(intervaloDeActualizacion));

        // Función para alternar entre entrar y salir de pantalla completa
        function activarFullscreen() {
            if (!document.fullscreenElement) {
                // Si NO está en fullscreen, lo activamos
                if (document.documentElement.requestFullscreen) {
                    document.documentElement.requestFullscreen();
                } else if (document.documentElement.mozRequestFullScreen) { // Firefox
                    document.documentElement.mozRequestFullScreen();
                } else if (document.documentElement.webkitRequestFullscreen) { // Chrome, Safari y Opera
                    document.documentElement.webkitRequestFullscreen();
                } else if (document.documentElement.msRequestFullscreen) { // IE/Edge
                    document.documentElement.msRequestFullscreen();
                }
            } else {
                // Si YA está en fullscreen, salimos de él
                if (document.exitFullscreen) {
                    document.exitFullscreen();
                } else if (document.mozCancelFullScreen) { // Firefox
                    document.mozCancelFullScreen();
                } else if (document.webkitExitFullscreen) { // Chrome, Safari y Opera
                    document.webkitExitFullscreen();
                } else if (document.msExitFullscreen) { // IE/Edge
                    document.msExitFullscreen();
                }
            }
        }

        const source = document.getElementById('videom');

        document.addEventListener("DOMContentLoaded", function () {
            const video = document.getElementById("mi-video");
            const source = document.getElementById("videom");
            const botonSiguiente = document.getElementById("siguiente");

            // Event listener para mostrar epsel con animación
            if (hambImg && epselDiv && imagen) {
                hambImg.addEventListener('click', function() {
                    epselDiv.classList.remove('epsel-cerrado'); // Asegurarse de que no esté la clase de cierre
                    epselDiv.classList.add('epsel-abierto');  // Aplicar la animación de apertura
                    imagen.classList.remove("oculto");
                    clearInterval(ocultarInterval);
                });
            }

            // Event listener para ocultar epsel con animación
            if (cerrarImg && epselDiv && imagen) {
                cerrarImg.addEventListener('click', function() {
                    epselDiv.classList.remove('epsel-abierto'); // Asegurarse de que no esté la clase de apertura
                    epselDiv.classList.add('epsel-cerrado');  // Aplicar la animación de cierre
                    ocultarInterval = setInterval(ocultarImagen, 5000);
                });
            }

            // Obtener la URL desde localStorage
            let peli = localStorage.getItem("movie");

            if (peli) {
                source.setAttribute("src", peli);
                video.load(); // Cargar el video al iniciar
            }

            function cambiarNumeroEnURL(incremento) {
                let url = localStorage.getItem("movie");

                // Extraer el número de 4 dígitos de la URL
                let match = url.match(/(\d{4})(?=\.(mp4|mkv)$)/);

                if (match) {
                    let numeroActual = parseInt(match[1]); // Convertir a número
                    let nuevoNumero = (numeroActual + incremento).toString().padStart(4, "0"); // Asegurar 4 dígitos

                    // Reemplazar el número en la URL
                    let nuevaURL = url.replace(/\d{4}(?=\.(mp4|mkv)$)/, nuevoNumero);

                    // Guardar en localStorage y actualizar el video
                    localStorage.setItem("movie", nuevaURL);
                    source.setAttribute("src", nuevaURL);
                    video.load();
                    video.play();
                }
            }

            // Evento para cambiar al siguiente número
            botonSiguiente.addEventListener("click", () => cambiarNumeroEnURL(1));
        });

        // Obtener la película desde el localStorage
        const peli = localStorage.getItem('movie');
        if (peli) {
            console.log(`Película seleccionada: ${peli}`);
            source.setAttribute('src', peli); // Establece la fuente del video correctamente
            video.load(); // Recarga el video con la nueva fuente
        }

        const tipo = localStorage.getItem('tipo');
        console.log(`Tipo de video: ${tipo}`);
        if (tipo == "pelicula") {
            var sig = document.getElementById("siguiente");
            sig.classList.add("oculto");
        }
        if (tipo == "serie") {
            var sig = document.getElementById("siguiente");
            sig.classList.remove("oculto");
        }

        function actualizarTiempo() {
    const tiempoActual = document.getElementById("tiempoActual");
    const minutos = Math.floor(video.currentTime / 60); // Minutos
    const segundos = Math.floor(video.currentTime % 60); // Segundos
    const formatoTiempo = `${minutos.toString().padStart(2, '0')}:${segundos.toString().padStart(2, '0')}`;
    tiempoActual.textContent = formatoTiempo;
}


var back = document.getElementById("back");

back.addEventListener("click", function() {
            window.history.back();
        });


// Escuchar el evento de actualización de tiempo del video
video.addEventListener("timeupdate", actualizarTiempo);

        function retroceder30s() {
            if (video.currentTime - 30 > 0) {
                video.currentTime -= 30; // Resta 30 segundos
            } else {
                video.currentTime = 0; // Si es menor a 0, lo pone al inicio
            }
        }

        function adelantar30s() {
            if (video.currentTime + 30 < video.duration) {
                video.currentTime += 30; // Suma 30 segundos
            } else {
                video.currentTime = video.duration; // Si supera la duración, lo pone al final
            }
        }

        if (peli === '../movies/mf.mkv') {
            var mensaje = "<source id='audio' src='../movies/mf.mp4' type='audio/mp3'>";
            document.getElementById('aud').innerHTML = mensaje;

            const audio = document.getElementById('aud');

            video.ontimeupdate = function (){
                if (Math.abs(audio.currentTime - video.currentTime) > 0.000001){
                    audio.currentTime = video.currentTime;
                }
            };

            video.onseeked = function(){
                audio.currentTime = video.currentTime;
            };

            video.onpause = function(){
                audio.pause();
            };

            video.onplay = function(){
                audio.play();
            };
        }

        async function lockOrientation() {
            if (screen.orientation) {
                try {
                    await screen.orientation.lock("landscape");
                } catch (error) {
                    console.error("No se pudo bloquear la orientación:", error);
                }
            }
        }

        // Intentar bloquear la orientación cuando la página cargue
        document.addEventListener("DOMContentLoaded", () => {
            lockOrientation();
        });


    </script>  
<style>
                ::-webkit-scrollbar {
    width: 4px; /* Más delgado */
    height: 4px;
}
::-webkit-scrollbar-track {
    background: rgba(255, 255, 255, 0.1); /* Track semi-transparente */
    border-radius: 3px;
}
::-webkit-scrollbar-thumb {
    background: rgba(255, 255, 255, 0.3); /* Thumb más oscuro */
    border-radius: 3px;
}


        .epis {
    margin: top;
    overflow: scroll;
    flex-direction: column;
    width: 76%;
}
.epis li {
    display: flex;
    flex-direction: row;
    align-items: center; /* Alinear imagen y texto */
    border-radius: .5rem;
    padding: .5rem; /* Padding interno */
    background-color: none; /* Fondo ligero para cada item */
    cursor: pointer;
    color: white;
    transition: background-color color 0.2s ease;
    border: none; /* Borde muy sutil */
}
.epis li:hover {
    background-color: #efefef;
    color: black;
}
body.dark .epis li {
    background-color: none;
    border-color: none;
}
body.dark .epis li:hover {
    background-color: #383838;
    color: black;
}

.epis li img { /* Miniatura episodio */
    width: 9rem; /* Ancho fijo miniatura */
    height: 4rem; /* Alto fijo miniatura */
    object-fit: cover;
    border-radius: .3rem; /* Redondeo ligero */
    margin-right: 0.8rem; /* Espacio a la derecha */
    border: none; /* Quitar borde individual */
}
.epis li div { /* Contenedor de texto del episodio */
    flex-grow: 1; /* Ocupar espacio restante */
    width: 10rem; /* Ancho automático */
    height: auto; /* Alto automático */
    margin-left: 0; /* Sin margen extra */
}
.epis li div h1 { /* Título episodio */
    font-size: 100%; /* Tamaño ajustado */
    font-weight: bold;
    margin-bottom: 0.2rem; /* Espacio pequeño antes de desc */
    line-height: 1.2;
}
.epis li div p { /* Descripción episodio */
    font-size: .75rem; /* Más pequeño */
    color: #555; /* Color más tenue */
    line-height: 1.3;
    /* Limitar a 2 líneas con ellipsis si es necesario */
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
}
body.dark .epis li div p {
    color: #aaa;
}
        #cerrar{
            width: 4rem;
            transform: rotate(180deg);
            position: absolute;
            left: .7rem;
            top: .9rem;
        }
        @keyframes slideInLeft {
            from {
                transform: translateX(100%);
                visibility: hidden;
            }
            to {
                transform: translateX(0);
                visibility: visible;
            }
        }

        @keyframes slideOutRight {
            from {
                transform: translateX(0);
                visibility: visible;
            }
            to {
                transform: translateX(100%);
                visibility: hidden;
            }
        }

        #epsel {
            flex-direction: column;
            overflow: scroll;
            align-items: center;
            justify-content: center;
            border-top-left-radius: 2rem;
            border-bottom-left-radius: 2rem;
            width: 50%;
            height: 99%;
            top: 1px;
            right: 1px;
            position: absolute;
            border: solid white;
            background: #121212;
            z-index: 99;
            transform: translateX(100%); /* Inicialmente fuera de la pantalla a la derecha */
            visibility: hidden; /* Inicialmente oculto */
            display: flex; /* Asegúrate de que esté en display flex */
            animation-fill-mode: forwards;
             /* Asegura que el estado final de la animación se mantenga */
        }

        .epsel-abierto {
            animation: slideInLeft 0.3s ease-in-out forwards;
        }

        .epsel-cerrado {
            animation: slideOutRight 0.3s ease-in-out forwards;
        }
        #hamb{
            display: flex;
            width: 2rem;
            position: absolute;
            top: 1.5rem;
            right: 1rem;
        }

        #isotipo_png{
            width: 70%; 
            height: 17%;
        }

        @media(max-height: 768px){
            #isotipo_png{
                padding: 3rem;
                height: 28%;
            }
        }

        @media(max-height: 560px){
            #isotipo_png{
            padding: .5rem;
            height: 58%;
            }
        }

        #aud{
            opacity: 0;
        }

        .oculto {
            opacity: 0;
        }
        *{
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        body{
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: black;
            width: 100vw;
            height: 100vh;
        }
        #container_buttons{
            height: 14vh;
        }
        #back{
            display: block;
            position: absolute;
            top: .5rem;
            left: .5rem;
            width: 4rem;
            z-index: 2;
        }
        #botonPausa{
            position: absolute;
            width: 4rem;
            left: 50%;
            transform: translateX(-50%);
        }
        #fullscreen{
            position: absolute;
            bottom: 1.9rem;
            right: 1.7rem;
            width: 3rem;
        }
        #retroceder, #adelantar {
            position: absolute;
            width: 4rem;
        }

        #retroceder {
            left: 42%;
        }

        #adelantar {
            right: 42%;
        }

        #tiempoActual{
            position: absolute;
            color: white;
            left: 2rem;
            bottom: 2.7rem;
            font-weight: bolder;
        }

        #contenedor{
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }
        #mi-video {
    display: flex;
    width: 100vw;
    height: 100vh; /* ¡Asegúrate de que ocupe toda la altura disponible! */
    object-fit: contain; /* ¡Cambio clave aquí! */
    /* Puedes añadir max-width y max-height para un control adicional */
    max-width: 100vw;
    max-height: 100vh;
}
        .barra-progreso {
            position: absolute;
            bottom: 3rem;
            left: 50%;
            transform: translateX(-50%);
            width: 90%;
            height: 8px;
            background: rgba(255, 255, 255, 0.3);
            border-radius: 5px;
        }

        .progreso {
            height: 100%;
            width: 0%;  /* Se actualizará con el tiempo */
            background: #ff5733;
            border-radius: 5px;
        }

        #siguiente{
            position: absolute;
            bottom: 4.5rem;
            right: 9rem;
            padding: .3rem;
            width: 8rem;
        }


        @media(max-width: 1179px){

            #retroceder {
                left: 40%;
            }

            #adelantar {
                right: 40%;
            }
            .barra-progreso {
                width: 83%;
            }

            #fullscreen{
                right: 1.7rem;
            }

        }

        @media(max-width: 978px){

            #retroceder {
                left: 38%;
            }

            #adelantar {
                right: 38%;
            }
            .barra-progreso {
                width: 79%;
            }

            #fullscreen{
                right: 1.7rem;
            }

        }

        @media (max-width: 768px) {

     .epis li img { width: 7rem; height: 4rem; }
     .epis li div h1 { font-size: 0.85rem; }
     .epis li div p { font-size: 0.7rem; }
#retroceder {
            left: 35%;
        }

        #adelantar {
            right: 35%;
        }
        .barra-progreso {
            width: 71%;
        }

        #fullscreen{
            right: 1.7rem;
        }

        }

        @media(max-width: 640px){
        #retroceder {
            left: 28%;
        }

        #adelantar {
            right: 28%;
        }
        .barra-progreso {
            width: 56%;
        }

        #fullscreen{
            right: 1.7rem;
        }

        #siguiente{
            position: absolute;
            bottom: 4.5rem;
            right: 7rem;
            padding: .1rem;
            width: 5rem;
        }
        }

        @media(max-width: 508px){
        #retroceder {
            left: 27%;
        }

        #adelantar {
            right: 27%;
        }
        .barra-progreso {
            width: 56%;
        }

        #fullscreen{
            right: 1.7rem;
        }
        }


        @media(max-width: 490px){
        #retroceder {
            left: 19%;
        }

        #adelantar {
            right: 19%;
        }
        .barra-progreso {
            width: 50%;
        }

        #fullscreen{
            right: 1.7rem;
        }
        }
    </style>
</body>
</html>
