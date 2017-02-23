<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Concierto</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
  </head>
  <body>

    <?php
    session_start();

    if ($_SESSION['TIPO_USUARIO']==NULL) {
      header ("Location: ../usuarios/index.html");
    }

    //Hacemos la conexión.
    $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

    //Comprobar que la conexión es correcta.
    if ($connection->connect_errno) {
        printf("Connection failed: %s\n", $connection->connect_error);
        exit();
    }

    include 'barra_menu.php';

      $id=$_GET['id'];

      $query="SELECT * FROM artista where NOMBRE='$id'";

      echo "<br><br><br>";

      var_dump($id);



      /*  //Cerramos el array.
        $resultado->close();
        // unset($objeto);
        unset($connection);*/


     ?>


     <script src="../js/jquery.js"></script>
     <script src="../js/bootstrap.min.js"></script>
  </body>
</html>
