<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Festivales</title>
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

    <h3 class="text-center">FESTIVALES</h3>

    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>
