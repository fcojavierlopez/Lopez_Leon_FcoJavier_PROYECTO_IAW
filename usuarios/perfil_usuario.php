<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Mi Perfil</title>
  </head>

  <style>

table {

  text-align: center;
  border-collapse: collapse;

}
  </style>

  <body>

    <?php
    session_start();

    if ($_SESSION['TIPO_USUARIO']==NULL) {
      header ("Location: index.html");
    }

    //Hacemos la conexión.
    $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');
    $connection2 = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

    //Comprobar que la conexión es correcta.
    if ($connection->connect_errno) {
        printf("Connection failed: %s\n", $connection->connect_error);
        exit();
    }

    $id=$_SESSION['CORREO_ELECTRONICO'];

    $query2 = "SELECT COUNT(compra.ID_EVENTO) as Num_Compras, SUM(compra.NUMERO_ENTRADAS) as Total_Entradas_Compradas
              FROM usuarios JOIN compra ON usuarios.CORREO_ELECTRONICO = compra.CORREO_ELECTRONICO JOIN eventos ON compra.ID_EVENTO = eventos.ID_EVENTO
              WHERE usuarios.CORREO_ELECTRONICO = '$id'
              GROUP BY usuarios.CORREO_ELECTRONICO";

    /*Consulta a la base de datos. Nos devuelve una serie de datos que será
    guardada en $resultado para más tarde ser recorrido.*/
    if ($resultado = $connection->query("SELECT CORREO_ELECTRONICO, FECHA_ALTA, EDAD, APELLIDOS, NOMBRE FROM usuarios where CORREO_ELECTRONICO = '$id';")) {
  ?>

    <?php
                  echo "<ul>";

              //Hacemos un fetch y búble mediante while para recorrer el array.
              while ($objeto = $resultado->fetch_object()) {
                  //Cada fila que encuentre imprimirá una fila con esta serie de celdas.

                  echo '<li><b>Email:</b> '.$objeto->CORREO_ELECTRONICO.'</li><br>';
                  echo '<li><b>Fecha de Alta:</b> '.$objeto->FECHA_ALTA.'</li><br>';
                  echo '<li><b>Edad:</b> '.$objeto->EDAD.'</li><br>';
                  echo '<li><b>Nombre:</b> '.$objeto->NOMBRE.'</li><br>';
                  echo '<li><b>Apellidos:</b> '.$objeto->APELLIDOS.'</li><br>';


                  /*Insertamos los iconos con su hipervínculo el cual nos redigirirá hacia la página
                  que le hemos indicado en el href.*/
                  echo "<br><br>";
                  echo '<td><a title="actualizar" href="actualizar_perfil_usuario.php?id='.$objeto->CORREO_ELECTRONICO.'">actualizar Perfil</a></td>';

              }

              //Cerramos el array.
              $resultado->close();
              unset($objeto);
              unset($connection);
          }

     ?>

   </ul>
   <br>

   <table border="2">
     <h3>Historial de Compras y Asistencias</h3><br>
   <thead>
     <tr>
       <th>Compras y Asistencias</th>
       <th>Total Entradas Compradas</th>

   </thead>

   <?php

    if ($resultado2=$connection2->query($query2)) {



             //Hacemos un fetch y búble mediante while para recorrer el array.
             while ($objeto2 = $resultado2->fetch_object()) {
                 //Cada fila que encuentre imprimirá una fila con esta serie de celdas.
                 echo '<tr>';
                 echo '<td>'.$objeto2->Num_Compras.'</td>';
                 echo '<td>'.$objeto2->Total_Entradas_Compradas.'</td>';

                 echo "</tr>";
    }

                //Cerramos el array.
                $resultado2->close();
                unset($objeto2);
                unset($connection2);


  }

  ?>
  </table>
  <br>

  <input type="button" class="btn btn-primary" value="Cerrar Sesión" onclick = "location='../usuarios/logout.php'"/>
  <input type="button" class="btn btn-primary" value="Volver a Home" onclick = "location='../usuarios/home.php'"/>

    <!-- <h1>PERFIL USUARIO MODO PRUEBA</h1> -->

  </body>
</html>
