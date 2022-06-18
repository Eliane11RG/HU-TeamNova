Feature: Aplicar filtros de busqueda

    Scenario Outline: El cliente busca una solo tipo de prenda
    Given el usuario se encuentra en la pagina principal
    When el usuario aplique filtros en la seccion de prendas<Tprenda>
    Then el sistema mostrara las prendas disponibles que coincidan 
    con el tipo de prenda que el usuario ha seleccionado<Filtro Tprenda>
    Example:
    | Tprenda | Filtro Tprenda         |
    | Casaca  | Casacas talla S,M,L,XL |
    | Chompas | Chompas talla M,L      |
    | Medias  | Medias talla M         |

    Scenario Outline: El cliente busca varias prendas a la vez
    Given el usuario se encuentra en la pagina principal
    When el usuario aplique filtros en la seccion de prendas<Tprenda>
    Then el sistema mostrara las prendas disponibles que coincidan con
    el tipo de prenda que el usuario ha asignado, resaltando el nombre
    de la prenda en especifico<Tprendas>
    | Tprenda | Filtro Tprenda         |
    | Casaca y polos | Casacas y Polos talla S,M,L,XL |
    | Chompas | Chompas talla M,L      |
    | Medias y Pantalones | Medias y Pantalones talla M,L |


