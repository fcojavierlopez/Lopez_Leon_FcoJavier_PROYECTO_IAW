<?php

//Hacemos la conexión.
$connection = new mysqli('localhost', 'administrador', '2asirtriana', 'ventaentradas');

//Comprobar que la conexión es correcta.
if ($connection->connect_errno) {
    printf("Connection failed: %s\n", $connection->connect_error);
    exit();
}

 ?>
