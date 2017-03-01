<?php 
session_start();

if(isset($_SESSION['user'])){
	
include 'hola.html';

}
else if(!isset($_SESSION['user'])){
	session_start();
	session_destroy();
	header('location:loginadmin.php?error=4');
}

?>