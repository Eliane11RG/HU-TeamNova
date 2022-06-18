Feature: Ver mis prendas favoritas
Scenario Outline:  El usuario quiere observar las prendas favoritas que ha seleccionado

Given el usuario quiera ver sus "prendas favoritas" seleccionadas
And observe una pestaña de favoritos
When  le de click a dicha opción
Then se le mostrará la "cantidad" 
And  "tipo  de  prendas" que el usuario ha marcado como favoritos.
Examples: 
 |Cantidad| |Tipo de prenda|
 |5 | |Camisas|
 | 1 | | Calzado|
 

Scenario Outline:  El usuario desea eliminar prendas de su lista de favoritos
Given  al usuario no le guste sus prendas favoritas que seleccionó
And desea eliminarlos de la lista
When le de click a la opción "desmarcar" o "eliminar de favoritos"
Then  le aparecerá un mensaje de confirmación si es que desea eliminar o no dicha prenda de la lista
 Example: 
 |opción| |Mensaje|
 |desmarcar| | desea eliminar la prenda de la lista de favoritos|