# HU-TeamNova
Feature: Publicitar la tienda


Scenario Outline: El gerente quiere saber los días más demandados de la tienda
Given el gerente quiere saber los días mas concurridos de la tienda
And necesite la informacion
When vaya a la seccion de ventas
Then verá la lista de días donde las personas se registraron e hicieron uso de ella. 
Examples:
|Ultimas ventas||Stock||Logins|
|48||21||56 usuarios|

Scenario Outline: El gerente no encuentra las cantidades definidas
Given el gerente tiene dificultades en cuanto a cantidades estimadas
And requiera de dicha informacion 
Then deberá corroborar la lista 
When los usuarios se hayan registrado

Examples:
|Ultimas ventas||Stock||Logins|
|31||21||5 usuarios no se registraron correctamente|
