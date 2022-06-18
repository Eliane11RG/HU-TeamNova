Feature: Simulador de probador
Scenario Outline: Recomendaciones de outfit
Given el usuario está buscando outfits
And el usuario esté pensando que le puede agradar
When le dé click en mostrar diferentes outfits
Then la app le empezará a recomendar una serie de outfits
Examples:
|Nombre|color|talla|boton buscar|
|Juan|Azul|"S"|boton buscar|