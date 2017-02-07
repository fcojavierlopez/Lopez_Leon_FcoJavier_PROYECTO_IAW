<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Nuevo Usuario</title>
  </head>
  <body>
    <?php
      session_start();

      if (!isset($_POST["email"])) : ?>
        <form method="post">
          <fieldset>
            <legend>Nuevo Usuario</legend>
            <span>Correo Electrónico </span><input type="email" name="email" required><br>
            <span>Passwd </span><input type="password" name="password" ><br>
            <span>Repetir Passwd </span><input type="password" name="password2" ><br>
            <span>Edad </span><input type="text" name="edad" required><br>
            <span>Apellidos </span><input type="text" name="apellidos" required><br>
            <span>Nombre </span><input type="text" name="nombre" required><br>
              <span>Tipo Usuario </span>
              <select id="tipo" name="tipo" class = "tipo" required>
                <option value="0">Usuario</option>
                <option value="1">Administrador</option>
              </select><br><br>
	          <input type="submit" value="Crear" name="send">
            <input type="button" value="Volver" onClick="location.href='editar_usuario.php'" />
	         </fieldset>
         <?php else: ?>
         <?php
           $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

           //comprobación de errores
           if ($connection->connect_error) {
            die("Error de conexión: ". $connection->connect_error);
           }
          ?>
          <?php

          if (isset($_POST['send'])) {
            $email=$_POST['email'];
            $passwd=$_POST['password'];
            $passwd2=$_POST['password2'];
            $edad=$_POST['edad'];
            $apellidos=$_POST['apellidos'];
            $nombre=$_POST['nombre'];
            $tipo=$_POST['tipo'];

            if ($passwd==$passwd2) {
              $query= "INSERT INTO usuarios (`CORREO_ELECTRONICO`,`PASSWD`,`FECHA_ALTA`,`EDAD`,`APELLIDOS`,`NOMBRE`,`TIPO_USUARIO`)
              VALUES('$email',md5('".$_POST['password']."'),sysdate(),$edad,'".$_POST['apellidos']."','".$_POST['nombre']."',$tipo)";

              $result = $connection->query($query);

              if ($result) {
                echo "Nuevo Usuario Creado";
                echo '<br>';
                echo '<META HTTP-EQUIV="Refresh" CONTENT="2; URL=editar_usuario.php">';
              }

            }  else {
              echo "Error. Contraseñas diferentes, intentar de nuevo.";
              echo '<br>';
              echo '<META HTTP-EQUIV="Refresh" CONTENT="2; URL=crear_usuario.php">';
            }

          }
           ?>

          <?php endif ?>

  </body>

</html>
