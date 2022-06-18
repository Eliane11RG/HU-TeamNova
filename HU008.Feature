Feature: Ver ofertas disponibles 

Scenario Outline: El usuario desea visualizar las ofertas que brindan las tiendas
Given el usuario haya seleccionado la pestaña "ofertas"
And que la app le muestre las prendas que están en <descuento>
When el usuario haya seleccionado las prendas que comprará
Then dichas prendas irán directo al "carrito de compras"

Examples: 
|Ofertas|   |descuento| 
|Camisas|  |20%|
|Jeans|    |10%|

Scenario Outline:  El usuario observa que no hay ofertas disponibles en ninguna tienda 
Given el usuario al seleccionar la pestaña "ofertas"
And que la app muestre el mensaje de " no hay ofertas disponibles en este momento".
When el usuario le de click a la opción "aceptar".
Then la app mandará al cliente al menú principal
 Example: 
 |Ofertas| |Mensaje|
 |Calzado| |No hay ofertas disponibles|
