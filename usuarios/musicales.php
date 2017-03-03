<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Musicales</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/eventos.css">
  </head>
  <body>

    <?php

      session_start();

      if ($_SESSION['TIPO_USUARIO']==NULL) {
        header ("Location: index.html");
      }

      include 'barra_menu.php';

      echo "<br><br><br>";

    ?>

    <h3 class="text-center">MUSICALES</h3>

    <?php

    //Hacemos la conexión.
    $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

    //Comprobar que la conexión es correcta.
    if ($connection->connect_errno) {
        printf("Connection failed: %s\n", $connection->connect_error);
        exit();
    }

    $query="SELECT eventos.NOMBRE FROM eventos where eventos.TIPO ='musical'";

  echo "<div id='concierto'>";

    if ($resultado = $connection->query($query)){
        while ($objeto = $resultado->fetch_object()) {

        echo "<div class='artista'><center>";

          echo'<h3><a href="info_musical.php?id='.$objeto->NOMBRE.'">'.$objeto->NOMBRE.'<a/></h3></center>';
        echo "</div>";
        }
        //Cerramos el array.
        $resultado->close();
        unset($objeto);
        unset($connection);
    }




     ?>

    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>
