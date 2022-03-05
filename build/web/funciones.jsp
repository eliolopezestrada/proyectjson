<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Funciones</title> 
<style type="text/css">
h1 { font: bold 2em garamond; color: navy; text-align: center; }
p { font: bold 1.1em arial; text-align: center; }
#respuesta { font: bold 1.5em verdana; color: purple; text-align: center; }
#rojo, #amarillo, #verde, #azul { width: 225px; height: 225px; 
       border: 1px solid black; margin: 10px; float: left }
#rojo  { background-color: red; }
#amarillo  { background-color: yellow; }
#verde  { background-color: green; }
#azul  { background-color: blue; }
</style>
<script type="text/javascript">
function escribe(num) {
         var colores = ["Ojo se salio","rojo","amarillo","verde","azul"];
         var texto = document.getElementById("respuesta")
         texto.innerHTML = colores[num]
         }
</script>
</head>
<body>
<h1>Te puedo decir dónde tienes el puntero del ratón:</h1>
<p>El ratón esta ahora encima del siguiente cuadrado:</p>
<h2 id="respuesta">ninguno</h2>
<div id="rojo" onmouseover="escribe(1)" onmouseout="escribe(0)"></div>
<div id="amarillo" onmouseover="escribe(2)" onmouseout="escribe(0)"></div>
<div id="verde" onmouseover="escribe(3)" onmouseout="escribe(0)"></div>
<div id="azul" onmouseover="escribe(4)" onmouseout="escribe(0)"></div>
</body>
</html>
