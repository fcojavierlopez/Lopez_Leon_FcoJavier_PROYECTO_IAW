<!DOCTYPE html>
<html lang="">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar Artista</title>
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

      if ($result = $connection->query("SELECT * from lugar
        where ID_LUGAR = '$id';")) {
        $obj = $result->fetch_object();

        echo "<form method='post'>";

        echo "ID <input name='idlugar' value='$obj->ID_LUGAR' required \><br><br>";
        echo "Localidad <input name='localidad' value='$obj->LOCALIDAD' required \><br><br>";
        echo "Provincia <input name='provincia' value='$obj->PROVINCIA' required \><br><br>";
        echo "País <input name='pais' type='text' value='$obj->PAIS' \><br><br>";
        echo "Latitud <input name='latitud' type='text' value='$obj->LATITUD' \><br><br>";
        echo "Longitud <input name='longitud' type='text' value='$obj->LONGITUD' \><br><br>";
        echo "<input type='submit' name='send' value='Actualizar'></br>";
        echo "</from>";
      } else {

            echo "Error: " . $result . "<br>" . mysqli_error($connection);
      }

      unset($obj);

      if (isset($_POST['send'])) {

        var_dump($_POST);

        //variables
        $idlugar=$_POST['idlugar'];
        $localidad=$_POST['localidad'];
        $provincia=$_POST['provincia'];
        $pais=$_POST['pais'];
        $latitud=$_POST['latitud'];
        $longitud=$_POST['longitud'];

      $query="UPDATE `ventaentradas`.`lugar` SET  `ID_LUGAR` = '$idlugar', `LOCALIDAD` = '$localidad', `PROVINCIA`= '$provincia', `PAIS`= '$pais', `LATITUD`= '$latitud', `LONGITUD`= '$longitud'
      WHERE `lugar`.`ID_LUGAR` = '$id'";

        if ($result = $connection->query($query))
           {
            header ("Location: ./editar_localidades.php");
        } else {

              echo "Error: " . $result . "<br>" . mysqli_error($connection);
        }
      }
      unset($connection);
      ?>
      <script type="text/javascript" src=" "></script>
    </body>
</html>
