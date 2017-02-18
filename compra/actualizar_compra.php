<!DOCTYPE html>
<html lang="">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar Evento</title>
    <link rel="stylesheet" type="text/css" href=" ">
    </head>
    <body>

      <?php

      session_start();

      if ($_SESSION['TIPO_USUARIO']==NULL) {
        header ("Location: ../usuarios/index.html");
      }

      $id = $_GET['id'];
      $id2 = $_GET["id2"];

        $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

        //comprobación de errores
        if ($connection->connect_error) {
         die("Error de conexión: ". $connection->connect_error);
        }

        $query2="SELECT NOMBRE, ID_EVENTO FROM eventos";
        $resultado = $connection->query($query2);


      if ($result = $connection->query("SELECT * from compra
        where CORREO_ELECTRONICO = '$id' and ID_EVENTO ='$id2'")) {

        $obj = $result->fetch_object();

        echo "<form method='post'>";

        echo "";
        echo "<span>Email</span><input name='email' value='$obj->CORREO_ELECTRONICO' required \><br><br>";
        ?>

        <span>Evento</span>

        <select id="evento" name="evento" class = "evento" required>
          <?php
          while ( $row = $resultado->fetch_array() )
          {
          ?>
            <option value="<?php echo $row['ID_EVENTO']?>">
              <?php
              echo $row['NOMBRE'];
            echo "</option>";
            }

        echo "</select><br><br>";
        echo "Numero Entradas <input name='numentradas' value='$obj->NUMERO_ENTRADAS' required \><br>";

        echo "<br><br>";
        echo "<input type='submit' name='send' value='Actualizar'>";
        ?>

        <input type="button" class="btn btn-primary" value="Volver" onclick = "location='editar_compra.php'"/>

        <?php
        echo "</from>";
      } else {

            echo "Error: " . $result . "<br>" . mysqli_error($connection);
      }

      unset($obj);

      if (isset($_POST['send'])) {

        var_dump($_POST);

        //variables
        $email=$_POST['email'];
        $evento=$_POST['evento'];
        $numentradas=$_POST['numentradas'];

      $query="UPDATE `ventaentradas`.`compra` SET  `CORREO_ELECTRONICO` = '$email', `ID_EVENTO` = '$evento', `NUMERO_ENTRADAS`= '$numentradas'
      WHERE `compra`.`CORREO_ELECTRONICO` = '$id' and `compra`.`ID_EVENTO` = '$id2'";

        if ($result = $connection->query($query))
           {
            header ("Location: ./editar_compra.php");
        } else {

              echo "Error: " . $result . "<br>" . mysqli_error($connection);
        }
      }
      unset($connection);
      ?>
      <script type="text/javascript" src=" "></script>
    </body>
</html>
