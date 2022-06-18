Feature: Validación de cobranza a clientes premium

Scenario Outline:   El usuario procede a realizar un pago de unas prendas con la versión premium
Given el usuario ya ha culminado de elegir las prendas que desea adquirir
And que la app le muestre que obtuvo un "descuento" extra solo en las poleras y pantalones
When adquiera la versión "premium" de la app
Then se le habilitará un cupón que le realizará un descuento extra en sus compras
Examples: 
|Tipo de prenda| |Descuento extra| 
| Polera|  |5%|
| Gorras|  | No hay descuento|
 
 

Scenario Outline:    El usuario no puede adquirir el descuento que le brinda la versión premium

Given el usuario no pueda adquirir el descuento en la versión "premium"
And le aparezca un "mensaje" de error a la hora realizar el pago correspondiente
When realice el pago de la cuenta premium
Then la app le otorgará un cupón de descuento a la hora de hacer sus compras.
 Example: 
 |Mensaje|
 |Error , aún no ha realizado el pago correspondiente para
  adquirir la versión premium de la app|

