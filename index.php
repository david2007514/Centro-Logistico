<?php




if(isset($_GET['error'])){
	if($_GET['error'] ==1){
	echo "Los campos estan vacios";
}
elseif ($_GET['error']==2) {
	echo "Los datos ingresados son incorrectos";
}
elseif ($_GET['error']==3) {
	echo "No intentes saltearte el formulario";
}
elseif ($_GET['error']==4) {
	echo "Tienes que iniciar session para ingresar";
}
unset($_GET['error']);

}








?>