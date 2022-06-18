Feature: Aplicar filtros de busqueda

    Scenario Outline: El usuario busca una sola talla
    Given el usuario se encuentra en la pagina principal
    When el usuario aplique filtros en la seccion tallas <Talla>
    Then el sistema mostrara las prendas disponibles con la talla seleccionada<filtro Talla>
    Example:
    | Talla | Filtro Talla    |
    | M     | Casacas talla M |
    | M     | Polos talla M   |
    | M     | Chompas talla M |
    | S     | Casacas talla S |
    | S     | Chompas talla S |
    Scenario Outline: El usuario busca varias tallas a la vez
    Given el usuario se encuentra en la pagina principal
    When el usuario aplique filtros en la seccion tallas <Talla>
    Then el sistema mostrara las prendas disponibles con la talla seleccionada
    mostrando la letra de la talla como etiqueta<filtro Talla>
    Example:
    | Talla | Filtro Talla    |
    | M, S    | Casacas talla M y S |
    | M , L   | Polos talla M y L  |
    | M     | Chompas talla M |
    | Xs y S     | Casacas talla Xs y S |
    | S     | Chompas talla S |

