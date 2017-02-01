<?php
session_start();

if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {

} else {
  header ("Location: ./index.html");
exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
<title>G&E - Panel de Control</title>

<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="../css/bootstrap.min.css">

</head>

<style>
    body {
        background-image: url("../fondo_login_5.jpg");
        background-color: #cccccc;
        background-size: 100%;
        background-repeat: no-repeat;
        overflow-x: hidden;
      }
      /*label {
        color: white;
      }*/
</style>

<body>
  <div class="container">
  <header class="jumbotron">

    <h3 class="text-center">Panel de Control - Bienvenido Administrador</h3>

</header>

<div class="container-fluid">
</div>
</div>
<br/>
<div class="col-sm-offset-4 col-sm-10">
<h3>EDICIÓN</h3>

  <ul>
  <li><a href="">Usuarios</a></li>
  <li><a href="">Eventos</a></li>
</ul>

<br><br>

<!-- <a href='login.php'>Volver a Inicio</a> -->

<br><br>

<input type="button" class="btn btn-primary" value="Volver a Inicio" onclick = "location='./login.php'"/>
<input type="button" class="btn btn-primary" value="Cerrar Sesión" onclick = "location='./logout.php'"/>
</div>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
