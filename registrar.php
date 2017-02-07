<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>G&E - Registro</title>

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">

  </head>

  <style>
      body {
          background-image: url("../img/fondo_login_5.jpg");
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

      <h3 class="text-center">FORMULARIO DE REGISTRO</h3>

  </header>

  <div class="container-fluid">
  </div>
  </div>



    <?php
  if (!isset($_POST["email"])) : ?>

  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-10">

      <form method="post">
        <fieldset>
          <h4>Nuevo Usuario</h4>
          <br>

          <div class="forceColor"></div>
          <div class="topbar">
            <div class="spanColor"></div>
          <label>Email</label><br>
          <input name="email" type="text" class="input" id="email" placeholder="Email" required>
          <br>

          <label>Contraseña</label><br>
          <input name="password" type="password" class="input" id="password" placeholder="Password" required>
          <br>

          <label>Edad</label><br>
          <input name="edad" type="text" class="input" id="edad" placeholder="Edad" required>
          <br>

          <label>Apellidos</label><br>
          <input name="apellidos" type="text" class="input" id="apellidos" placeholder="Apellidos" required>
          <br>

          <label>Nombre</label><br>
          <input name="nombre" type="text" class="input" id="nombre" placeholder="Nombre" required>
          <br><br>

          <input type="submit" class="btn btn-primary" value="Registrarse">

        </fieldset>
      </form>
  </div>
</div>
    <?php else: ?>

      <?php
          echo "<h3>Formulario de Registro</h3>";
          //conexion a la base de datos
          $connection = new mysqli("localhost", "administrador", "2asirtriana", "ventaentradas");

         if ($connection->connect_errno) {
          printf("Connection failed: %s\n", $connection->connect_error);
        exit();
   }
   $email=$_POST['email'];
   $edad=$_POST['edad'];
   $tipo='0';
   $query= "INSERT INTO usuarios (`CORREO_ELECTRONICO`,`PASSWD`,`FECHA_ALTA`,`EDAD`,`APELLIDOS`,`NOMBRE`,`TIPO_USUARIO`)
   VALUES('$email',md5('".$_POST['password']."'),sysdate(),$edad,'".$_POST['apellidos']."','".$_POST['nombre']."',$tipo)";

   $result = $connection->query($query);

   if ($result) {
     echo "Usuario Registrado ";
     echo "<br><a href='index.html'>Ir a Inicio de Sesión</a>";
         } else {
     echo " Datos incorrectos.";
     echo "<br><br><a href='registrar.php'>Volver al Formulario de Registro</a>";
        }
   mysqli_close($connection);
   ?>
    <?php endif ?>

    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>

  </body>
</html>
