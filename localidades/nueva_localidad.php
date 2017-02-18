<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Nueva Localidad</title>
  </head>
  <body>
    <?php
      session_start();

      if ($_SESSION['TIPO_USUARIO']==NULL) {
        header ("Location: ../usuarios/index.html");
      }

      if (!isset($_POST["localidad"])) : ?>
        <form method="post">
          <fieldset>
            <legend>Nueva Localidad</legend>
            <span>Localidad </span><input type="text" name="localidad" ><br>
            <span>Provincia </span><input type="text" name="provincia" ><br>
            <span>País </span><input type="text" name="pais" ><br>
            <span>Latitud </span><input type="text" name="latitud"><br>
            <span>Longitud </span><input type="text" name="longitud"><br>

	          <input type="submit" value="Añadir" name="send">
            <input type="button" value="Volver" onClick="location.href='editar_localidades.php'" />
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
            $localidad=$_POST['localidad'];
            $provincia=$_POST['provincia'];
            $pais=$_POST['pais'];
            $latitud=$_POST['latitud'];
            $longitud=$_POST['longitud'];



              $query= "INSERT INTO lugar(`LOCALIDAD`,`PROVINCIA`,`PAIS`,`LATITUD`,`LONGITUD`)
              VALUES('$localidad','$provincia','$pais',$latitud,$longitud)";

              $result = $connection->query($query);
              // var_dump($result);

              if ($result) {
                echo "Nueva Localidad añadida";
                echo '<br>';
                echo '<META HTTP-EQUIV="Refresh" CONTENT="2; URL=editar_localidades.php">';
              }

              if (!$result) {
                echo "Error al añadir la nueva localidad, inténtelo de nuevo.";
                var_dump($query);
                echo '<br>';
                echo '<META HTTP-EQUIV="Refresh" CONTENT="2; URL=nueva_localidad.php">';
              }

            }

           ?>

          <?php endif ?>

  </body>

</html>
