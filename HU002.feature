Feature: Simular proceso de probador

    Scenario Outline: El cliente desea comprobar los resultados de la simulacion
    Given el usuario ha seleccionado las prendas <obj prend>
    When el usuario interactua con el recuadro "simular Outfit"
    Then el sistema procesa la peticion y mostrara el resultado
    de la simulacion
    Examples:
    |obj prend|
    | Polo Tommy Hilffigger talla s |
    | Casaca HyM talla M           |
    | Pantalon Doo Australia talla L  |

    Scenario Outline: El cliente desea comprobar los resultados de la simulacion pero con una sola prenda
    Given el usuario ha seleccionado una sola prenda <obj prend>
    When el usuario interactua con el recuadro "simular outfit"
    Then el sistema procesa la peticion y mostrara el resultado
    de la simulacion junto con prendas al azar, basadas en las recomendaciones
    que ofrece la prenda que se acaba de probar <recom>
    |Obj prend| recom|
    |Polo tommy Hilffigger talla s| Pantalon jean Tommy Hilffigger talla 26|
    |Casaca HyM talla M| Leggin color celeste talla M|
    |Pantalon Doo Australia talla L| Casaca de cuero Doo Australia talla  L|
