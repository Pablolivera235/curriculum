<!DOCTYPE html>
<html lang="en">
<?php 
session_start();
$mode = isset($_COOKIE['theme']) ? $_COOKIE['theme'] : 'dark';
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./assets/icono.png" type="image/x-icon">
    <link rel="manifest" href="./manifest.json">
    <title>UNRECORD | Inicio</title>
    <script src="./scripts/main.js" defer></script>
    <link rel="stylesheet" href="./styles.css">
</head>
<body class="<?php echo $mode; ?>">

    <div id="container">
        <div>
            <img id="logo" src="<?php echo ($mode === 'dark') ? './assets/isotipo_dark.png' : './assets/isotipo.png'; ?>" alt="">

            <form action="" method="POST">
                <input type="text" placeholder="Usuario" name="user">
                <input type="password" placeholder="Contraseña" name="pass">
                <input type="submit" value="Iniciar Sesión" id="send">
                <a style="text-decoration: none; font-weight: bolder; color: #81A1C1; font-size: .9rem; margin-top: .2rem;" href="./registro.php">Registrarse</a>
            </form>

            <!-- Botón de cambio de modo -->
            <button id="theme-toggle">🌙 / ☀️</button>
        </div>
    </div>

</body>



    <style>
* {
    margin: 0;
    padding: 0;
    overflow: hidden;
}

#container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 100vw;
    height: 100vh;
}

#container > div {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    border-radius: 1rem;
    width: 15rem;
    height: 20rem;
}

#container > div > img {
    width: 10rem;
    margin-top: -2rem;
    margin-left: .5rem;
    padding: 1.5rem;
}

input {
    text-align: center;
    border: solid;
    border-radius: .5rem;
    height: 2rem;
    outline: none;
}

/* 🎭 Modo Oscuro */
body.dark {
    background: #121212;
    color: #E0E0E0;
}

.dark #container > div {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    border-radius: 1rem;
    width: 15rem;
    height: 20rem;
}

.dark input {
    text-align: center;
    border-radius: .5rem;
    height: 2rem;
    background: rgb(45,45,45,255);
    border: 1px solid #444;
    color: #E0E0E0;
}

input:-webkit-autofill,
input:-webkit-autofill:hover, 
input:-webkit-autofill:focus, 
input:-webkit-autofill:active, 
input:focus, input:active {
    background: rgb(45, 45, 45) !important;
    color: #E0E0E0 !important; 
    border-color: #508DD4; 
    box-shadow: none !important;
}

form{
    display: flex;
    flex-direction: column;
    align-items: center;
    gap:.3rem;
    width: min-content;
}

#send{
    width: 8rem;
    margin-top: .5rem;
}

/* ☀️ Modo Claro */
body.light {
    background: #F5F5F5;
    color: #333;
}

.light #container > div {
}

.light input {
   text-align: center;
            border: solid;
            border-radius: .5rem;
            height: 2rem;
}

/* 🎛️ Botón de cambio de tema */
#theme-toggle {
    position: absolute;
    top: 1.5rem;
    right: 1.5rem;
    padding: 0.5rem;
    border: none;
    border-radius: 0.5rem;
    cursor: pointer;
    font-weight: bold;
    background: #508DD4;
    color: white;
    transition: 0.3s;
}

#theme-toggle:hover {
    background: #4C9AFF;
}

    </style>

    <?php 
    session_start();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        // Obtener valores del formulario
        $user = $_POST["user"];
        $pass = $_POST["pass"];
    
        // Conectar a la base de datos
        $con = @mysqli_connect("localhost", "Pablolivera235", "Eljavi.o01", "unrecord");
    
        // Verificar si la conexión fue exitosa
        if (!$con) {
            die("Error de conexión: " . mysqli_connect_error());
        }
    
        // Preparar la consulta para obtener el usuario y la contraseña
        $stmt = $con->prepare("SELECT Usuarios, Pass FROM usuarios WHERE Usuarios = ?");
        $stmt->bind_param("s", $user);
        $stmt->execute();
        $result = $stmt->get_result();
    
        // Verificar si se encontró el usuario
        if ($result->num_rows > 0) {
            // Obtener el registro del usuario
            $usuarioelegido = $result->fetch_array(MYSQLI_ASSOC);
    
            // Comparar el nombre de usuario con el ingresado
            if ($usuarioelegido['Usuarios'] === $user) {
                // Si el usuario coincide, comparar las contraseñas
                if ($usuarioelegido['Pass'] === $pass) {
                    header("Location: ./pages/home/home.php");
                } else {
                    echo "Contraseña incorrecta.";
                }
            } else {
                echo "El usuario no coincide.";
            }
        } else {
            echo "No se encontró el usuario.";
        }

        
        $_SESSION['usuario'] = $user;
        
        // Cerrar la conexión
        $stmt->close();
        mysqli_close($con);
    }
    
    ?>

<script>

var verificacionsn = <?php echo json_encode(htmlspecialchars($user, ENT_QUOTES, 'UTF-8')); ?>;
console.log("User:", verificacionsn);

</script>


    <script>
    if ('serviceWorker' in navigator) {
        window.addEventListener('load', function() {
            navigator.serviceWorker.register('sw.js').then(function(registration) {
                console.log('Service Worker registrado con éxito:', registration);
            }).catch(function(error) {
                console.log('Error al registrar el Service Worker:', error);
            });
        });
    }

document.addEventListener("DOMContentLoaded", function() {
    const themeToggle = document.getElementById("theme-toggle");
    const body = document.body;
    const logo = document.getElementById("logo");

    themeToggle.addEventListener("click", function() {
        let newTheme = body.classList.contains("dark") ? "light" : "dark";
        
        // Cambia la clase del body
        body.classList.toggle("dark", newTheme === "dark");
        body.classList.toggle("light", newTheme === "light");

        // Cambia el logo
        logo.src = newTheme === "dark" ? "./assets/isotipo_dark.png" : "./assets/isotipo.png";

        // Guardar en cookie usando PHP
        document.cookie = `theme=${newTheme}; path=/; max-age=31536000`;
    });
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

    
</body>
</html>
