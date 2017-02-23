<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Conciertos</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
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

    <h3 class="text-center">CONCIERTOS</h3>

    <?php

    //Hacemos la conexión.
    $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

    //Comprobar que la conexión es correcta.
    if ($connection->connect_errno) {
        printf("Connection failed: %s\n", $connection->connect_error);
        exit();
    }

    $query="SELECT artista.NOMBRE, artista.IMAGEN FROM eventos join asiste ON eventos.ID_EVENTO = asiste.ID_EVENTO
                                                               JOIN artista ON asiste.ID_ARTISTA = artista.ID_ARTISTA
                                                  where eventos.TIPO ='concierto'";

  echo "<div>";

    if ($resultado = $connection->query($query)){
        while ($objeto = $resultado->fetch_object()) {

          echo'<a href="info_artista.php?id='.$objeto->NOMBRE.'">'.$objeto->NOMBRE.'<a/><br><br>';

        }
        //Cerramos el array.
        $resultado->close();
        unset($objeto);
        unset($connection);
    }

     ?>
   </div>
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>
