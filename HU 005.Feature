Feature: Busqueda por prendas de marca

Scenario Outline: Usuario busca prenda de marca en especifco
Given nuesta app cuenta con diversos "Filtros"
When el usuario aplique "Filtros" en la seccion "Marcas"
Then podra seleccionar la marca que quiere <Marca_Deseada>
And la app mostrara los <Resultados> de la <Marca_Deseada>

Example:
|Filtros| Marcas| Marca_Deseada|
|Filtros| Marcas| Pengüin|

|Resultados|
|Ropa_Marca_Pengüin| 

Scenario Outline: Usuario busca por 2 o mas marcas distintas
Given cuenta con filtros dinamicos
When el usuario aplique "Filtros" en la seccion "Marcas"
Then podra seleccionar tantas <Marca_Deseada> este buscando como desee
And la app mostrara los <Resultados> de las <Marca_Deseada>

Example: 
|Filtros| Marcas| Marca_Deseada| Marca_Deseada| Marca_Deseada|
|Filtros| Marcas| Pengüin      | Adidas       | Bamba|

|Resultados        | Resultados2      | Resultados3|
|Ropa_Marca_Pengüin| Ropa_Marca_Adidas| Ropa_Marca_Bamba|
