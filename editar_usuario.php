<!DOCTYPE html>
<html lang="">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
    </head>
    <style>

table {

    text-align: center;
    border-collapse: collapse;

  }
    </style>
    <body>

      <?php
            //Hacemos la conexión.
            $connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

            //Comprobar que la conexión es correcta.
            if ($connection->connect_errno) {
                printf("Connection failed: %s\n", $connection->connect_error);
                exit();
            }

            /*Consulta a la base de datos. Nos devuelve una serie de datos que será
            guardada en $resultado para más tarde ser recorrido.*/
            if ($resultado = $connection->query('SELECT CORREO_ELECTRONICO, FECHA_ALTA, EDAD, APELLIDOS, NOMBRE, TIPO_USUARIO FROM usuarios;')) {
      ?>

      <!--Creamos la tabla y la de la fila principal cuyos datos son fijos (títulos de las
      celdas)-->
      <table border="2">
      <thead>
        <tr>
          <th>Correo Electrónico</th>
          <th>Fecha de Alta</th>
          <th>Edad</th>
          <th>Apellidos</th>
          <th>Nombre</th>
          <th>Tipo de Usuario</th>
          <th>Actualizar Usuario</th>
          <th>Borrar Usuario</th>
      </thead>

      <?php

                //Hacemos un fetch y búble mediante while para recorrer el array.
                while ($objeto = $resultado->fetch_object()) {
                    //Cada fila que encuentre imprimirá una fila con esta serie de celdas.
                    echo '<tr>';
                    echo '<td>'.$objeto->CORREO_ELECTRONICO.'</td>';
                    echo '<td>'.$objeto->FECHA_ALTA.'</td>';
                    echo '<td>'.$objeto->EDAD.'</td>';
                    echo '<td>'.$objeto->APELLIDOS.'</td>';
                    echo '<td>'.$objeto->NOMBRE.'</td>';
                    echo '<td>'.$objeto->TIPO_USUARIO.'</td>';

                    /*Insertamos los iconos con su hipervínculo el cual nos redigirirá hacia la página
                    que le hemos indicado en el href.*/

                    echo '<td><a title="actualizar" href="actualizar.php?id='.$objeto->CORREO_ELECTRONICO.'">
                    <img width="40" height="40" src="../img/img_edicion/actualizar.png" alt="actualizar"/></a></td>';

                    echo '<td><a title="borrar" href="borrar_usuario.php?id='.$objeto->CORREO_ELECTRONICO.'">
                    <img width="40" height="40" src="../img/img_edicion/borrar.png" alt="borrar"/></a></td>';


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
    <input type="button" class="btn btn-primary" value="Crear Usuario" onclick = "location='crear_usuario.php'"/>
    </body>
</html>
