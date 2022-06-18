Feature: Buscar por prendas hechas con material en especifco

Scenario Outline: El cliente filtra por material en la app
Given el usuario busca comprar una prenda con un <material> 
And nuestra app puede filtrar busqueda por "Materiales"
When el usuario aplique el <filtro> del <material>
Then se mostraran los <Resultados> espeficados
And el usuario podra encontrar con mas facilidad su <Prenda_Filtrada>

Example:
|Filtros| Materiales| material|
|Resultados| Prenda_Filtrada|

|Filtros| Materiales| Algodon|
|Resultados| Prenda_con_Algodon|

Scenario Outline: El cliente filtra por buscar con varios materiales
Given el usuario busca comprar una prenda con varios <material> 
And nuestra app puede filtrar busqueda por muchos "Materiales"
When el usuario aplique el <filtro> del <material>
Then se mostraran los <Resultados> espeficados
And el usuario podra encontrar con mas facilidad su <Prenda_Filtrada>

Example: 
|Filtros| Materiales| material| material| material|
|Resultados| Prenda_Filtrada| Prenda_Filtrada| Prenda_Filtrada|

|Filtros| Materiales| Algodon| Lana| Tela|
|Resultados| Prenda_con_Algodon| Prenda_con_Lana| Prenda_con_Tela|
