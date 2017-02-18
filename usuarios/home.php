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
    ?>
    <div class="container">
    <nav role="navigation" class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>

        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="home.php">Inicio</a></li>
                <li><a href="#">Conciertos</a></li>
                <li><a href="#">Festivales</a></li>
                <li class="dropdown">
                  <a data-toggle="dropdown" class="dropdown-toggle" href="#">Otros<b class="caret"></b></a>
                  <ul role="menu" class="dropdown-menu">
                    <li><a href="#">Monólogos</a></li>
                    <li><a href="#">Musicales</a></li>
                    <li><a href="#">Teatro</a></li>
                  </ul>
                </li>
                <li><a href="logout.php">Cerrar Sesión</a></li>
            </ul>

            <form role="search" class="navbar-form navbar-right">
              <div class="form-group">
                <input type="text" placeholder="Search" class="form-control">
              </div>
            </form>
        </div>
      </nav>
    </div>
    <br>
    <br>
    <br>
    <?php

    echo "Bienvenido " .$_SESSION['NOMBRE'];
    echo "<br>";

    if ($_SESSION['TIPO_USUARIO']== '1') {

      echo "<br><a href='control_panel.php'>Edición</a>";
      echo "<br><br>";
      }

    if ($_SESSION['TIPO_USUARIO']=='0') {
      echo "<br><a href='perfil_usuario.php'>Mi Perfil</a>";
      echo "<br><br>";
    }

      echo "Actualmente esta página está en construcción<br>";


     ?>

     <script src="../js/jquery.js"></script>
     <script src="../js/bootstrap.min.js"></script>
  </body>
</html>
