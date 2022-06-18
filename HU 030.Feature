Feature: Reconocimiento de usuarios premium

Scenario Outline: El software reconoce al usuario premium
Given El usuario cliente adquiera la membresía premium
And el software almacena su ID de usuario <ID> en el formulario "Clientes Premium"
When el usuario vuelva a la página de inicio de fast clothes
Then no se mostrarán anuncios durante su navegación
And tendrá acceso a guardar un segundo avatar de cuerpo
Example: 
|ID|Simulación|
|Javier_06|"La app es libre de anuncios, y se le otarga una ranura más para guardar un segundo avatar de cuerpo|

Scenario Outline: El software reconoce al usuario no premium
Given que el usuario cliente no adquiere la membresía premium
And el software no encuentra su ID <ID> en el formulario "Clientes premium"
When el usuario vuelva a la página de inicio de fast clothes
Then no contará con los beneficios premium
Example: 
|ID|Simulación|
|Javier_06|"Regresa a la pagina principal de Fast Clothes"|