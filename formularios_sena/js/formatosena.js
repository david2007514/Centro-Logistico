!function(){
  var formulario = document.formularioRegistro,
  formulario2= document.formularioRegistro2,
  elementos = formulario.elements,
  elementos2=formulario2.elements;
  //funcion
  var validarInput = function(){
    for (var i = 0; i < elementos.length; i++) {
      if(elementos[i].type =="text" ||elementos[i].type =="email"){
       if(elementos[i].value  == 0){
         elementos[i].className = elementos[i].className + ' error';
         return false;
        } else {elementos[i].className = elementos[i].className.replace(" error", "");}
      }  
    }
    var tipoContrato;
    function Ocultar(){formulario2.getElementsByClassName("definido").style.display ="none";}
    if (tipoContrato=formulario2.getElementsById("opns")){
    for (var i = 0; i < elementos2.length; i++) {
      if(elementos2[i].type == "date"||elementos2[i].type == "datetime"){
       if(elementos2[i].value  == 0){
         console.log('el campo' + elementos2[i].name + ' esta incompleto');
         return false;
        } else {elementos2[i].className = elementos2[i].className.replace(" error", "");}
      }  
    }
  }
  };
  var enviar=function(e){
    if(validarInput){
      alert('Por forvar ingrese los datos correctamente');
      e.preventDefault();
    } else {  
        console.log('Envia correctamente')
       
      }
  }; 
  // Funciones blur y Focus
  var focusInput = function(){
    this.parentElement.children[1].className = "label active";
    this.parentElement.children[0].className = this.parentElement.children[0].className.replace("error", ""); 
  };
  var blurInpunt = function(){
    if(this.value<=0){
      this.parentElement.children[1].className ="label";
      this.parentElement.children[0].className = this.parentElement.children[0].className + " error";
    }
  };

  //eventos
  formulario.addEventListener("submit", enviar);
  formulario2.addEventListener("submit", enviar); 

  for (var i = 0; i < elementos.length; i++) {
    if (elementos[i].type == "text" || elementos[i].type == "email" )
    { 
      elementos[i].addEventListener("focus", focusInput);
      elementos[i].addEventListener("blur", blurInpunt);
    
    }
    
  }
 for (var i = 0; i < elementos2.length; i++) {
    if (elementos2[i].type == "text" || elementos2[i].type == "email" )
    { 
      elementos2[i].addEventListener("focus", focusInput);
      elementos2[i].addEventListener("blur", blurInpunt);
    
    }
    
  }  
   
}();