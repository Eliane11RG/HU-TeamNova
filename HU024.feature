Feature: Simular proceso de probador

 Scenario Outline: El cliente agrega prendas a la bolsa
    Given el usuario ha culminado el proceso de simulacion
    When el usuario interactue con el recuadro que diga
    "Agregar a la bolsa"
    Then el sistema agrega las prendas seleccionadas a la "bolsa"<obj prend>
    y luego se le consultara por medio de un recuadro en pantalla
    si desea seguir comprando.
    Example:
    | obj prend                      |
    | Polo Tommy Hilffigger talla s  |
    | Casaca HyM talla M             |
    | Pantalon Doo Australia talla L |

    Scenario Outline: El cliente agrega prendas a la bolsa y procede a revisar la bolsa
    Given el usuario ha culminado el proceso de simulacion
    When el usuario interactue con el recuadro que diga agregar a la bolsa
    Y despues de eso haya interactuado con el boton ir a la bolsa
    Then el sistema le mostrara el listado de prendas en la bolsa, 
    con su respectivo precio <price>, talla <T> y modelo<prend> antes de comprarlos.
    Example
    | Func | price | T | prend |  
    | Ir a la bolsa| 59.99  | S | Polo Tommy Hilffigger talla s |
    | Ir a la bolsa| 119.99 | M | Casca HyM talla M             |

    Scenario Outline: El cliente agrega prendas a la bolsa y procede a seguir comprando
    Given el usuario ha culminado el proceso de simulacion
    When el usuario interactue con el recuadro que diga agregar a la bolsa<Func>
    And despues de que haya interactuado con el boton "seguir comprando"
    Then el sistema mostrara el catalogo de todas las prendas sin ningun filtro aplicado
    Example
    | Func             | objprend         |
    | Seguir comprando | "Pag principal"  |
    | Seguir comprando | " Pag principal" |
