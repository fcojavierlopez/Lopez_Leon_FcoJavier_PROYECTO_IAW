<!DOCTYPE html>
<html lang="">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar Asistencia</title>
    <link rel="stylesheet" type="text/css" href=" ">
    </head>
    <body>

      <?php

      session_start();

      if ($_SESSION['TIPO_USUARIO']==NULL) {
        header ("Location: ../usuarios/index.html");
      }

      $id = $_GET['id'];
      $id2 = $_GET['id2'];

        $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

        //comprobación de errores
        if ($connection->connect_error) {
         die("Error de conexión: ". $connection->connect_error);
        }

        $query2="SELECT NOMBRE, ID_EVENTO FROM eventos";
        $resultado = $connection->query($query2);

        $query3="SELECT NOMBRE, ID_ARTISTA FROM artista";
        $resultado2 = $connection->query($query3);

      if ($result = $connection->query("SELECT * from eventos
        where ID_EVENTO = '$id';")) {
        $obj = $result->fetch_object();

        echo "<form method='post'>";

        echo "<span>Evento</span>";
        ?>
        <fieldset>
          <legend>Nueva Asistencia</legend>

          <span>Eventos</span>
          <select id="evento" name="evento" class = "evento" required>
            <?php
            while ( $row = $resultado->fetch_array() )
            {
              ?>
              <option value="<?php echo $row['ID_EVENTO']?>">
                <?php echo $row['NOMBRE']; ?>
              </option>

              <?php
              }
              ?>
          </select><br><br>

          <span>Artistas</span>
          <select id="artista" name="artista" class = "artista" required>
            <?php
            while ( $row2 = $resultado2->fetch_array() )
            {
              ?>
              <option value="<?php echo $row2['ID_ARTISTA']?>">
                <?php echo $row2['NOMBRE']; ?>
              </option>

              <?php
              }
              ?>
          </select><br><br>
        </fieldset>

        <?php
        echo "<br><br>";
        echo "<input type='submit' name='send' value='Actualizar'>";
        ?>

        <input type="button" class="btn btn-primary" value="Volver" onclick = "location='editar_asiste.php'"/>

        <?php
        echo "</from>";
      } else {

            echo "Error: " . $result . "<br>" . mysqli_error($connection);
      }

      unset($obj);

      if (isset($_POST['send'])) {

        var_dump($_POST);

        //variables
        $evento=$_POST['evento'];
        $artista=$_POST['artista'];

      $query="UPDATE `ventaentradas`.`asiste` SET  `ID_EVENTO` = '$evento', `ID_ARTISTA` = '$artista'
      WHERE `asiste`.`ID_EVENTO` = '$id' and `asiste`.`ID_ARTISTA` = '$id2'";

        if ($result = $connection->query($query))
           {
            header ("Location: ./editar_asiste.php");
        } else {

              echo "Error: " . $result . "<br>" . mysqli_error($connection);
        }
      }
      unset($connection);
      ?>
      <script type="text/javascript" src=" "></script>
    </body>
</html>
