<?php
/*-La funcion del archivo login.php es recibir las variables ingresadas en php e instanciar y usar
   La clase acceso,que usa objetos conectados a la base de datos.
  -Tambien valida los campos ingresados.
  .
*/

require_once ('acesso.php') ;


$cedula  = $_POST['cedula'];
$password= $_POST['password'];

$login = new Acesso($cedula,$password,"");


if(isset($_POST['cedula']) && isset($_POST['password']))
    $login->Login();
elseif (!isset($_POST['cedula']) && !isset($_POST['password']))
    header('location:loginadmin.php?error=3');

//error por que se puede ingresar por el url, configurar
//crear cerrar seccion para confirmar






?>