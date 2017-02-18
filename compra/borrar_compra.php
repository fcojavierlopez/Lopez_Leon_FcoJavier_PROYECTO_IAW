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
      $id2=$_GET["id2"];


      $query="DELETE FROM compra WHERE CORREO_ELECTRONICO = '$id' and ID_EVENTO ='$id2'";
      $resultado = $connection->query($query);

      if (!$resultado) {
    echo "Consulta Errónea";
    } else {
    echo "Evento Eliminado";
    }

    ?>

    <form action='editar_compra.php' method="post">
    <input type='submit' value='Volver a Edición' />
    </form>

</body>
</html>
