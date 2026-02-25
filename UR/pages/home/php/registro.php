<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./assets/Photon-Logo.png" type="image/x-icon">
    <title>Photon | Registro</title>
</head>
<body>
    <div id="container">
        <img onclick="redirect()" src="./assets/isotipo.png" alt="">
        <br>
        <div>
        <form action="" method="POST" enctype="multipart/form-data">
            <input type="text" placeholder="Usuario" name="user" required>
            <input type="password" placeholder="Contraseña" name="pass" required>
            <input type="email" placeholder="Correo" name="mail" required>
            <div id="foto_perfil">
                <p>Elegir Foto</p>
                <img id="subir" src="./assets/Subir.png" alt="Subir archivo" onclick="document.getElementById('fileInput').click();">
            </div>
            <input type="file" id="fileInput" name="archivo" style="display: none;" required>
            <input type="submit" value="Registrarse" id="send" name="send">
        </form>
        </div>
    </div>

    <script>
        function redirect(){
            window.location.href="./index.php";
        }
    </script>

    <style>
        *{
            margin: 0;
            padding: 0;
        }

        #foto_perfil{
            display: flex;
            align-items: center;
            flex-direction: row;
            gap: 1rem;
            text-align: center;
            border-radius: .5rem;
            height: 2rem;
            margin-left: .5rem;
        }

        #subir{
            width: 1.5rem;
        }

        #container{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }

        #container>div{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            border: solid;
            border-radius: 1rem;
            width: 15rem;
            height: 20rem;
        }

        #container>img{
            width: 8rem;
        }

        #container>div>img{
            width: 6rem;
            margin-top: -2rem;
            padding: 1.5rem;
        }
        input{
            text-align: center;
            border: solid;
            border-radius: .5rem;
            height: 2rem;
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
    </style>

    <?php 
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $user = $_POST["user"];
        $pass = $_POST["pass"];
        $mail = $_POST["mail"]; 
        
        $con = @mysqli_connect("localhost", "Pablolivera235", "Eljavi.o01", "unrecord");
        
        $resultado = @mysqli_query($con, "INSERT INTO usuarios (Usuarios, Pass, Correo) VALUES ('".$user."', '".$pass."', '".$mail."')");
        
        if ($resultado) {
            $usuarioId = mysqli_insert_id($con);

            $archivo = $_FILES['archivo'];
            $extension = pathinfo($archivo['name'], PATHINFO_EXTENSION);
            $nombreArchivo = uniqid('archivo_', true) . '.' . $extension;
            $directorioDestino = './assets/Perfiles/' . $nombreArchivo;

            if (move_uploaded_file($archivo['tmp_name'], $directorioDestino)) {
                $nombreAlmacenado = $nombreArchivo;
                
                $perfil = @mysqli_query($con, "INSERT INTO perfil (id_usuario, Img, Verificado) VALUES ('".$usuarioId."', '".$nombreAlmacenado."', '0')");
                
                if ($perfil) {
                    echo "Registro y subida de archivo exitosos.";
                    header("Location: ./index.php");
                } else {
                    echo "Error al insertar el perfil: " . mysqli_error($con);
                }
            } else {
                echo "Error al mover el archivo.";
            }
        } else {
            echo "Error al insertar el usuario: " . mysqli_error($con);
        }
        
        mysqli_close($con);
    }

    ini_set('display_errors', 1);
    ini_set('log_errors', 1);
    error_reporting(E_ALL);
    ?>
</body>
</html>
