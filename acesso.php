<?php
require_once ('login.php');
require_once('conexion.php');
/**
* 
*/
class Acesso{
	

	protected $cc;
	protected $name;
   	protected $pass;
   	
    



/*Guarda los valores de login.html que son enviados a login.php,
 siendo esta ultima donde se instancia la clase acesso,
 enviando los datos por el constructor*/
	public function __construct($cedula,$pass,$nombre)
	{
		$this->cc = $cedula;
		$this->name = $nombre;
		$this->pass = $pass; 


		

	}

//Realiza una consulta en la base de datos y el resultado es guardado en la variable $dato 
	public function Login(){
		$Conexion = new Conexion();
		
		$sql = $Conexion->query("SELECT * FROM admin WHERE cc='$this->cc' and contraseña='$this->pass';");
		$dato = $Conexion->recorrer($sql);
		

//Compara el resultado de la consulta deacuerdo a los valores ingresados
		
		if (empty($_POST['cedula']) or empty($_POST['password'])) {
			header('location:loginadmin.php?error=1');
				}		
		elseif($dato['cc']==$this->cc and $dato['contraseña']==$this->pass){

			session_start();
			$_SESSION['user'] = $this->cc;
			header("location:hola.php");
		}				
		elseif($dato['cc']!=$this->cc and $dato['contraseña']!=$this->pass){
			header('location:loginadmin.php?error=2');
        }
        }
		
         }


  ?>