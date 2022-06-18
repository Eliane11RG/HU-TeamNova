Feature: Modificar stock de la prenda

Scenario Outline: El nuevo stock de la prenda es mayor o igual a 1
Given el cliente de la app compra una prenda
And los datos de que la prenda ha sido comprada quedan registrados 
When al número de prendas en stock se le debe restar las compras de la prenda
And el nuevo valor del stock es mayor o igual a 1
Then la cantidad de stock disponible es actualizada
Example:
|Mensaje|
|El stock ha sido actualizado|

Scenario Outline: El nuevo stock de la prenda es 0
Given el cliente de la app compra una prenda
And los datos de que la prenda ha sido comprada quedan registrados
When al número de prendas en stock se le debe restar las compras de la prenda
And el nuevo valor del stock es 0
Then la prenda quedará suspendida y el usuario "cliente" no podrá verla en el catálogo.
|Mensaje|
|El stock ha sido actualizado, el comprador no tendra acceso a la prenda|

