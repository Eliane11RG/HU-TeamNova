# HU-TeamNova
Feature: Informar al cliente

Scenario Outline: El marketero quiere darles anuncios a sus clientes
Given el marketero quiere dar un aviso a sus clientes acerca de los nuevos outfits
And tiene que enviarle a muchas personas
When presione enviar mensaje
Then le aparecerán los correos de las personas que usaron la app y procederá a compartir las novedades.
 
Examples:
|Mensaje|
|Se acerca el día del padre, no te pierdas de nuestras ofertas|


Scenario Outline: El marketero quiere darles anuncios a sus clientes
Given el marketero tiene dificultades al contactarse
And no se muestren los ultimos clientes
When le aparezca la lista de personas que se registraron 
Then el gerente procederá a mandarles mensajes personalizados.
Examples:
|Mensaje|
|No se pudo contactar con dichos clientes|
