Feature: Comparar outfits

Scenario Outline: El usuario quiere cambiar de outfit sin perder el seleccionado
Given el usuario quiere buscar otro outfit
And encuentre la ventana que diga si quiere retirarse
When seleccione la casilla sí
Then se guardará el outfit anteriormente visto y podrá hacer comparaciones
Examples:
|Outfit guardado||Nuevo outfit|ID usuario|
|Conjuto verano||Conjunto verano||Rodrigo|



Scenario Outline: El outfit seleccionado no se guardó
Given el usuario quiere cambiar de outfit 
And encuentre la ventana para cambiar de outfit
When seleccione la casilla sí
Then se regresará a la seccion de outfits recomendados
Examples:
|Outfit guardado||Nuevo outfit|ID usuario|
|No hay coincidencias||Ropa invierno||Rodrigo|
