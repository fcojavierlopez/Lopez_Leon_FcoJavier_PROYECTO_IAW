<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Artista Nuevo</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">

  </head>
  <body>
    <?php
      session_start();

      if ($_SESSION['TIPO_USUARIO']==NULL) {
        header ("Location: ../usuarios/index.html");
      }

      if (!isset($_POST["nombre"])) : ?>
      <br>

      <div class="container">
        <div class="col-md-offset-4 col-md-4">
          <form method="post">
            <fieldset>
              <legend>Nuevo Artista</legend>
              <br>
              <span>Nombre </span><input class="form-control" type="text" name="nombre" ><br>
              <span>Genero </span><input class="form-control" type="text" name="genero" ><br>
              <span>Descripción </span><textarea class="form-control" type="text" name="descripcion" required></textarea><br>
              <!-- <span>imagen </span><input type="" name="imagen" required><br> -->
              <span>Enlace </span><input class="form-control" type="text" name="enlace" required><br><br>

              <div class="col-md-offset-3 col-md-8">
	             <input class="btn btn-primary" type="submit" value="Añadir" name="send">
               <a class="btn btn-primary" href="editar_artista.php" role="button">Cancelar</a>
              </div>
	            </fieldset>
          </form>
        </div>
      </div>
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

    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>

</html>
