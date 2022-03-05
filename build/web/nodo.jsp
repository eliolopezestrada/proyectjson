<%-- 
    Document   : nodo
    Created on : 5/02/2022, 02:27:55 PM
    Author     : elio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
   <title>Manipular nodos</title> 
<style type="text/css">
   #cuadro  { width: 400px; height: 250px; border: 1px black solid; float: right; 
            font-family: arial; overflow: auto }
   p  { font-size: 1em; font-family: arial;  }
</style>
<script type="text/javascript">
//Creación de un nuevo nodo
var nuevoElemento = document.createElement("p");
var nuevoTexto = document.createTextNode("Nuevo elemento en la página");
var nuevo = nuevoElemento.appendChild(nuevoTexto);
function restaurar(){ //restaurar el valor inicial mediante innerHTML
         var lugar = document.getElementById("cuadro");
         lugar.innerHTML = "<h4 id='primero'>primer texto fijo</h4><h4 id='segundo'>Segundo texto fijo</h4><h4 id='tercero'>Tercer texto fijo</h4>"
         }
 function buenosDias() {
         nombre = prompt("¿Cómo te llamas?");
         alert ("Buenos días " + nombre);
         } 
function debajo() { //insertar elemento al final -appendChild()-
         var lugar = document.getElementById("cuadro")
         lugar.appendChild(nuevo)
         }
function delante() { //Insertar elemento delante de otro -insertBefore()
         var segundo = document.getElementById("segundo")
         var padre = segundo.parentNode
         padre.insertBefore(nuevo,segundo)
         }
function reemplazar() { //Reemplazar elemento con -replaceChild()-
         var primero = document.getElementById("primero")
         var padre = primero.parentNode
         padre.replaceChild(nuevo,primero)
         }
function suprimir() { //Suprimir un elemento -removeChild()-
         var tercero = document.getElementById("tercero")
         tercero.parentNode.removeChild(tercero)	 
         }			 
function cambiar() { //cambiar de sitio : removeChild() + appendChild()
         var segundo = document.getElementById("segundo")
         segundo.parentNode.removeChild(segundo)
         document.getElementById("cuadro").appendChild(segundo)
         }
function copiar() { //copia de un nodo: cloneNode(true)
         var segundo = document.getElementById("segundo")
         copia = segundo.cloneNode(true)
         document.getElementById("cuadro").appendChild(copia)	 
         }
</script>
</head>
<body>
  <h1>Manipulación  de nodos. </h1>
  <div id="cuadro">
     <h4 id="primero">primer texto fijo</h4>
     <h4 id="segundo">Segundo texto fijo</h4>
     <h4 id="tercero">Tercer texto fijo</h4>
  </div>
     <p>Pulsa en los siguientes párrafos, para cambiar los textos de la caja de la derecha</p>
     <p onclick="restaurar()">Pulsa en este párrafo para restaurar el estado inicial de la caja.</p>
     <p onclick="debajo()">Insertar nuevo elemento debajo de todos</p>
     <p onclick="delante()">Insertar nuevo elemento delante del segundo.</p>
     <p onclick="reemplazar()">reemplazar el primer elemento de la caja por otro nuevo</p>
     <p onclick="suprimir()">Suprimir el tercer párrafo</p>
     <p onclick="cambiar()">Poner el segundo texto en último lugar</p>
     <p onclick="copiar()">Copia del nuevo elemento, se inserta al final</p>
</body>
</html>