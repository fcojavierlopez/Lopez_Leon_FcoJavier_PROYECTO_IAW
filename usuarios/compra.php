<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>

    <?php
      session_start();

       if ($_SESSION['TIPO_USUARIO']==NULL) {
         header ("Location: index.html");
       }

      $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

      //comprobación de errores
      if ($connection->connect_error) {
       die("Error de conexión: ". $connection->connect_error);
      }

      $id=$_GET['id'];
      $mail=$_SESSION['CORREO_ELECTRONICO'];

      $query="SELECT eventos.URL, eventos.ID_EVENTO FROM eventos join asiste on eventos.ID_EVENTO = asiste.ID_EVENTO WHERE asiste.ID_ARTISTA='$id'";
      $query2="INSERT INTO `compra`(`CORREO_ELECTRONICO`, `ID_EVENTO`) VALUES ('$mail','$id')";



      if ($result = $connection->query($query)){
        $objeto = $result->fetch_object();

        $resultado = $connection->query($query2);
         header ("Location:$objeto->URL");

    }



    ?>

  </body>
</html>
