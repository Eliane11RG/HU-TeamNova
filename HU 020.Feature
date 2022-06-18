Feature: Ver mis ultimas compras

Scenario Outline: El cliente logra observar su historial de compras
Given el cliente esta registrado en la app
And realizo una o varias <compra>
When el cliente revise su perfil y seleccione el boton de "Compras"
Then el cliente podra observar sus <compra> mas recientes
And podra ver los detalles de estas

Example:
|perfil| Compras|
|compra| compra| compra|

|MichiPro| Compras|
|Polo 6/06/2022||Zapatos 6/06/2022||Abrigo 6/06/2022|

Scenario Outline: El cliente no ve ninguna compra
Given el cliente esta registrado en la app
And no realizo ni una <compra>
When el cliente revise su perfil y seleccione el boton de "Compras"
Then ela app le mostrara un breve <mensaje>
And se le sugerira ralizar alguna compra

Example:
|perfil| compras|
|mensaje|

|MichiNoob| Compras|
|No se realizo ninguna compra| |Desea realizar alguna compra|
