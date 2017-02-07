<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Artista Nuevo</title>
  </head>
  <body>
    <?php
      session_start();

      if (!isset($_POST["nombre"])) : ?>
        <form method="post">
          <fieldset>
            <legend>Nuevo Artista</legend>
            <!-- <span>ID Artista </span><input type="email" name="email" required><br> -->
            <span>Nombre </span><input type="text" name="nombre" ><br>
            <span>Genero </span><input type="text" name="genero" ><br>
            <span>Descripción </span><textarea type="text" name="descripcion" required></textarea><br>
            <!-- <span>imagen </span><input type="" name="imagen" required><br> -->
            <span>Enlace </span><input type="text" name="enlace" required><br>

	          <input type="submit" value="Añadir" name="send">
            <input type="button" value="Volver" onClick="location.href='editar_artista.php'" />
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
            $nombre=$_POST['nombre'];
            $genero=$_POST['genero'];
            $descripcion=$_POST['descripcion'];
            $enlace=$_POST['enlace'];



              $query= "INSERT INTO artista (`NOMBRE`,`GENERO`,`DESCRIPCION`,`IMAGEN`,`URL`)
              VALUES('$nombre','$genero','$descripcion',NULL,'$enlace')";
              var_dump($query);

              $result = $connection->query($query);
              var_dump($result);
              if ($result) {
                echo "Nuevo Artista añadido";
                echo '<br>';
                echo '<META HTTP-EQUIV="Refresh" CONTENT="2; URL=editar_artista.php">';
              }

              if (!$result) {
                echo "Error al añadir nuevo artista, inténtelo de nuevo.";
                echo '<br>';
                // echo '<META HTTP-EQUIV="Refresh" CONTENT="2; URL=crear_artista.php">';
              }

            }

           ?>

          <?php endif ?>

  </body>

</html>
