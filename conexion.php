<?php 

class Conexion extends mysqli{

    public function __construct(){
        parent::__construct('localhost','root','','centrologistico');
        $this->query("SET NAMES 'utf8';");
        $this->connect_errno ? die('Error con la conexion') :$x = '';
        echo $x;
        unset($x);
            }



      public function recorrer($y){
      return mysqli_fetch_array($y);
    }} 

$mysqli = new Conexion();

?>











