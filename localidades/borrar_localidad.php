<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Eliminar Localidad</title>
  </head>
  <body>
    <?php
      session_start();

      if ($_SESSION['TIPO_USUARIO']==NULL) {
        header ("Location: ../usuarios/index.html");
      }

      $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

      //comprobación de errores
      if ($connection->connect_error) {
       die("Error de conexión: ". $connection->connect_error);
      }

      $id=$_GET["id"];

      // var_dump($id);

      $query="DELETE FROM lugar WHERE ID_LUGAR = '$id'";
      $resultado = $connection->query($query);

      if (!$resultado) {
    echo "Consulta Errónea";
    } else {
    echo "Localidad Eliminada";
    }

    ?>

    <form action='editar_localidades.php' method="post">
    <input type='submit' value='Volver a Edición' />
    </form>

</body>
</html>
