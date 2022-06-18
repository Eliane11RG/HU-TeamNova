# HU-TeamNova
Feature: Buscar marcas de ropa


Scenario Outline: El usuario encuentra la marca de su preferencia
Given el usuario encuentra la marca que buscaba
And encuentre la prenda que busca
When dé click en marcas de ropa
Then se le habilitará una serie de marcas de ropa desde la mas buscadas 
Examples:
|Marcas||Tipo de prenda||Stock|
|Adidas||Zapatila||31|



Scenario Outline: El usuario no encuentra la marca de su preferencia
Given el usuario no encuentra la marca que busca
And encuentre otras recomendaciones
When retorne a otra ventana
Then se le recomendará una marca de ropa con la que trabaje la empresa
Examples:
|Marcas||Tipo de prenda||Stock|
|Gucci||Zapatila||0, se encontraron otros resultados|
