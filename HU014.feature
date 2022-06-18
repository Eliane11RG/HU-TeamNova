# HU-TeamNova
Feature: Asesoramiento para la app

Scenario Outline: El usuario tiene dudas sobre la app
Given el cliente tiene dudas de como manejar la app
And no tiene como solucionarlo
When inicie este modo
Then la app tendra un modo ayuda donde pueda resolver sus inconvenientes 
Examples:
|Mensaje|
|Indique cual es su marca de preferencia|



Scenario Outline: El usuario accede al modo ayuda
Given el usuario maneja bien la app
And tiene poco conocimiento sobre la tecnologia 
When la app le muestre una serie de pasos acerca de la busqueda de ropa
Then el cliente procederá a manejar la app de una manera correcta
Examples:
|Mensaje|
|Para poder observar los outfits, debe dirigirse a la seccion catálogos|
