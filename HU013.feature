# HU-TeamNova
Feature: Recomendaciones de outfit

Scenario Outline: El usuario busca outfits
Given el usuario está buscando outfits
And el usuario esté pensando que le puede agradar
When le dé click en mostrar diferentes outfits
Then la app le empezará a recomendar una serie de outfits
Example:
|Seccion||talla|Stock|
|Ropa verano|"S"| |30|



Scenario Outline: El usuario no encuentra busca outfits
Given el usuario no encuentra outfits
And el usuario no tenga una decisión
Then se le mostrará una seccion de busqueda por colores
When el usuario se encuentre en dicha ventana, tendrá que poner los colores de su preferencia

Example:
|Seccion||talla|Stock|
|Ropa verano|"S"| |0|
