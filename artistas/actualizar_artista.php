<!DOCTYPE html>
<html lang="">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar Artista</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
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

      if ($result = $connection->query("SELECT * from artista
        where ID_ARTISTA = '$id';")) {
        $obj = $result->fetch_object();

        echo "<br>";

        echo "<div class='container-fluid'>";
        echo "<div class='col-md-offset-4 col-md-3'>";

        echo "<form method='post'>";

        echo "<legend>Actualizar Artista</legend>";
        echo "ID Artista <input name='idartista' class='form-control' value='$obj->ID_ARTISTA' required \><br>";
        echo "Nombre <input name='nombre' class='form-control' value='$obj->NOMBRE' required \><br>";
        echo "Genero <input name='genero' class='form-control' value='$obj->GENERO' required \><br>";
        echo "Descripcion <input name='descripcion' class='form-control' type='textarea' value='$obj->DESCRIPCION' \><br>";
        echo "Enlace <input name='enlace' class='form-control' type='text' value='$obj->URL' \><br>";

        ?>

          <div class='col-md-offset-2 col-md-8'>
            <input type='submit' class='btn btn-primary' name='send' value='Actualizar'>
            <a class="btn btn-primary" href="editar_artista.php" role="button">cancelar</a>
          </from>
          </div>
        </div>
      </div>

      <?php
      } else {

            echo "Error: " . $result . "<br>" . mysqli_error($connection);
      }

      unset($obj);

      if (isset($_POST['send'])) {

        var_dump($_POST);

        //variables
        $idartista=$_POST['idartista'];
        $nombre=$_POST['nombre'];
        $genero=$_POST['genero'];
        $descripcion=$_POST['descripcion'];
        $enlace=$_POST['enlace'];

      $query="UPDATE `ventaentradas`.`artista` SET  `ID_ARTISTA` = '$idartista', `NOMBRE` = '$nombre', `GENERO`= '$genero', `DESCRIPCION`= '$descripcion', `URL`= '$enlace'
      WHERE `artista`.`ID_ARTISTA` = '$id'";

        if ($result = $connection->query($query))
           {
            header ("Location: ./editar_artista.php");
        } else {

              echo "Error: " . $result . "<br>" . mysqli_error($connection);
        }
      }
      unset($connection);
      ?>

      <script src="../js/jquery.js"></script>
      <script src="../js/bootstrap.min.js"></script>
    </body>
</html>
