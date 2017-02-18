<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Nueva Asistencia</title>
  </head>
  <body>
    <?php
      session_start();

      if ($_SESSION['TIPO_USUARIO']==NULL) {
        header ("Location: ../usuarios/index.html");
      }

      if (!isset($_POST["evento"])) : ?>

      <?php
      $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

      //comprobación de errores
      if ($connection->connect_error) {
       die("Error de conexión: ". $connection->connect_error);
      }

      $query2="SELECT eventos.NOMBRE, eventos.ID_EVENTO, lugar.LOCALIDAD FROM eventos join lugar on eventos.ID_LUGAR = lugar.ID_LUGAR";
      $resultado = $connection->query($query2);

      $query3="SELECT NOMBRE, ID_ARTISTA FROM artista";
      $resultado2 = $connection->query($query3);

       ?>
        <form method="post">
          <fieldset>
            <legend>Nueva Asistencia</legend>

            <span>Eventos</span>
            <select id="evento" name="evento" class = "evento" required>
              <?php
              while ( $row = $resultado->fetch_array() )
              {
                ?>
                <option value="<?php echo $row['ID_EVENTO']?>">
                  <?php echo $row['NOMBRE']." - ".$row['LOCALIDAD'] ; ?>
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
	          <input type="submit" value="Crear" name="send">
            <input type="button" value="Volver" onClick="location.href='editar_asiste.php'" />
	         </fieldset>
         <?php else: ?>
         <?php
           $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

           //comprobación de errores
           if ($connection->connect_error) {
            die("Error de conexión: ". $connection->connect_error);
           }
          ?>
          <?php

          if (isset($_POST['send'])) {

            $evento=$_POST['evento'];
            $artista=$_POST['artista'];


              $query= "INSERT INTO asiste(`ID_EVENTO`,`ID_ARTISTA`)
              VALUES('$evento','$artista')";


              $result = $connection->query($query);
              // var_dump($result);

              if ($result) {
                echo "Nueva Asistencia Creada";
                echo '<br>';
                echo '<META HTTP-EQUIV="Refresh" CONTENT="2; URL=editar_asiste.php">';
              }

              if (!$result) {
                echo "Error al añadir la nueva Asistencia, inténtelo de nuevo.";
                var_dump($query);
                echo '<br>';
                echo '<META HTTP-EQUIV="Refresh" CONTENT="10; URL=crear_asistencia.php">';
              }

            }

           ?>

          <?php endif ?>

  </body>

</html>
