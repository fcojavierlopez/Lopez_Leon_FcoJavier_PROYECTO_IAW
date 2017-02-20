<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Home</title>
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

    ?>

    <br>
    <br>
    <br>
    <?php

      echo "<br>";
      echo "<br>";

      echo "<h3 class='text-center'>TOP MUSIC</h3>";
      
      include 'carousel.php';


      echo "<h2 class='text-center' >Actualmente esta página está en construcción.</h2>";

     ?>

     <script src="../js/jquery.js"></script>
     <script src="../js/bootstrap.min.js"></script>
  </body>
</html>
