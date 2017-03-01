<?php
include 'acesso.php';
include 'conexion.php';

$cedula = $_POST['cc'];
$name = $_POST['nombre'];
$password = $_POST['password'];



/*Hace una consulta preparada esperando 3 parametros, que es verdadera en la condion, solo cuando el usuario envia los datos con el formulario
  La funcion bin_param recibe los argumentos desde el formulario registro.html, La primera sentencia que esta en comillas, hace referencia al
, al tipo de dato que se van ha enviar como argumentos. Haciendo referencia a i=Integer(entero), s=String(cadena), d = double(decimal)*/

//MySQLi
if ($stmt = $mysqli->prepare("INSERT INTO admin VALUES(?,?,?)") ){
/* ligar parámetros para marcadores */
$stmt->bind_param("isi",$cedula,$name,$password); 
/* ejecutar la consulta */
$stmt->execute();
/* cerrar sentencia */
$stmt->close(); 
}
else{
echo "Error al ejecutar la sentencia preparada".$mysqli->error;
}


?>