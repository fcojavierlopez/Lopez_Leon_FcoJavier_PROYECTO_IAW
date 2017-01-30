<?php
session_start();
?>

<?php
//conexion
$connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

//comprobación de errores
if ($connection->connect_error) {
 die("Error de conexión: ". $connection->connect_error);
}

$email = $_POST['email'];
$password = $_POST['password'];

$query = "SELECT * FROM usuarios WHERE CORREO_ELECTRONICO = '$email' AND PASSWD=md5('$password')";

$result = $connection->query($query);
$obj=$result->fetch_object();

if ($result->num_rows > 0) {


    $_SESSION['loggedin'] = true;
    $_SESSION['CORREO_ELECTRONICO'] = $email;
    $_SESSION['TIPO_USUARIO'] = $obj->TIPO_USUARIO;
    $_SESSION['NOMBRE'] = $obj->NOMBRE;

      echo "Bienvenido " .$_SESSION['NOMBRE'];
      echo "<br><br><a href=logout.php>Cerrar Sesión</a>";


 } else {
   echo "Email o Contraseña son incorrectos.";

   echo "<br><a href='index.html'>Volver a Intentarlo</a>";
 }
 mysqli_close($connection);
 ?>
