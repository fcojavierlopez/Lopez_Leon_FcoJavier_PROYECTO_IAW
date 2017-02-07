<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Artistas</title>
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

    //Hacemos la conexión.
    $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

    //Comprobar que la conexión es correcta.
    if ($connection->connect_errno) {
        printf("Connection failed: %s\n", $connection->connect_error);
        exit();
    }

    if ($resultado = $connection->query('SELECT ID_ARTISTA, NOMBRE, GENERO, DESCRIPCION, URL FROM artista;')) {

    ?>

<table border="2">
<thead>
  <tr>
    <th>ID Artista</th>
    <th>Nombre</th>
    <th>Genero</th>
    <th>Descripción</th>
    <th>Enlace</th>
    <th>actualizar</th>
    <th>Borrar</th>
</thead>
<?php



          //Hacemos un fetch y búble mediante while para recorrer el array.
          while ($objeto = $resultado->fetch_object()) {
              //Cada fila que encuentre imprimirá una fila con esta serie de celdas.
              echo '<tr>';
              echo '<td>'.$objeto->ID_ARTISTA.'</td>';
              echo '<td>'.$objeto->NOMBRE.'</td>';
              echo '<td>'.$objeto->GENERO.'</td>';
              echo '<td>'.$objeto->DESCRIPCION.'</td>';
              echo '<td>'.$objeto->URL.'</td>';

              /*Insertamos los iconos con su hipervínculo el cual nos redigirirá hacia la página
              que le hemos indicado en el href.*/

              echo '<td><a title="actualizar" href="actualizar_artista.php?id='.$objeto->ID_ARTISTA.'">
              <img width="40" height="40" src="../img/img_edicion/actualizar.png" alt="actualiza"/></a></td>';

              echo '<td><a title="borrar" href="borrar_artista.php?id='.$objeto->ID_ARTISTA.'">
              <img width="40" height="40" src="../img/img_edicion/borrar.png" alt="borra"/></a></td>';


              echo '</tr>';
          }

          //Cerramos el array.
          $resultado->close();
          unset($objeto);
          unset($connection);
      }

 ?>
</table>
<br>
<input type="button" class="btn btn-primary" value="Añadir Artista" onclick = "location='crear_artista.php'"/>

  </body>
</html>
