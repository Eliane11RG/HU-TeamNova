Feature: Pagar para mejorar los beneficios

Scenario Outline:   El usuario inicia sesión con su cuenta premium

Given el usuario selecciona la opción "iniciar sesión premium"
And cuando el usuario haya colocado la <ID>  su cuenta a una red social o navegador
When complete el pago correspondiente
Then se le habilitarán los "beneficios o las opciones premium".

Examples: 
|ID| |beneficios|
| jose05| | acceso a la app sin anuncios|
| pepito13| |Reservar prendas que llegarán a ciertas tiendas|

 
 

Scenario Outline:   El usuario no puede adquirir la versión premium

Given el usuario no pueda iniciar sesión en la versión premium
And le aparezca un "mensaje" de error a la hora de registrarse en la app
When enlace su cuenta a su correo o a alguna red social
Then la app le permitirá acceder a la versión premium de la app.
 Example: 
 |Mensaje| 
 |Error ,usted no puede activar la versión premium|
