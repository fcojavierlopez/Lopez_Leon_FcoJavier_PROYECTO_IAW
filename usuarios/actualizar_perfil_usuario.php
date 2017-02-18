<!DOCTYPE html>
<html lang="">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar Usuario</title>
    <link rel="stylesheet" type="text/css" href=" ">
    </head>
    <body>

      <?php

      session_start();

      if ($_SESSION['TIPO_USUARIO']==NULL) {
        header ("Location: ../usuarios/index.html");
      }

      $id = $_GET['id'];

        $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

        //comprobación de errores
        if ($connection->connect_error) {
         die("Error de conexión: ". $connection->connect_error);
        }

      if ($result = $connection->query("SELECT * from usuarios
        where CORREO_ELECTRONICO = '$id';")) {

        $obj = $result->fetch_object();

        echo "<form method='post'>";

        echo "Email <input name='email' value='$obj->CORREO_ELECTRONICO' required \><br><br>";
        echo "Edad <input name='edad' type='text' value'$obj->EDAD' required\><br><br>";
        echo "Apellidos <input name='apellidos' value='$obj->APELLIDOS' required \><br><br>";
        echo "Nombre <input name='nombre' value='$obj->NOMBRE' required \><br><br>";
        echo "<input type='submit' name='send' value='Actualizar'>";
        echo "</from>";

      } else {

            echo "Error: " . $result . "<br>" . mysqli_error($connection);
      }

      unset($obj);

      if (isset($_POST['send'])) {

        //variables
        $email=$_POST['email'];
        $edad=$_POST['edad'];
        $apellidos=$_POST['apellidos'];
        $nombre=$_POST['nombre'];

      $query="UPDATE `ventaentradas`.`usuarios` SET  `CORREO_ELECTRONICO` = '$email', `EDAD` = '$edad', `APELLIDOS`= '$apellidos', `NOMBRE`= '$nombre'
      WHERE `usuarios`.`CORREO_ELECTRONICO` = '$id'";

        if ($result = $connection->query($query))
           {
             header ("Location: ../usuarios/perfil_usuario.php");
             var_dump($query);
        } else {

              echo "Error: ".$result."<br>".mysqli_error($connection);
        }
      }
      unset($connection);
      ?>
      <input type="button" class="btn btn-primary" value="Volver" onclick = "location='./perfil_usuario.php'"/>

      <script type="text/javascript" src=" "></script>
    </body>
</html>
