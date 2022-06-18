Feature: Simular proceso de probador
    Scenario Outline: El cliente desea comprar las prendas en la bolsa
    Given El usuario se encuentra en la "bolsa"
    And se dispone a comprar prendas
    When el usuario interactua con el recuadro "proceder a pagar"
    Then el sistema procesa la peticion
    And procedera a mostrar un formulario en el cual el usuario debe
    seleccionar el metodo de pago<paymethod>, los datos de su tarjeta
    <Nro de tarjeta> <CVV> <Fecha de caducidad> y como desea recibir 
    la compra.<modalidad>
    
    Example:
    | paymethod | Nro de tarjeta | CVV | Fecha de caducidad |modalidad
    | Visa       | 4005123488651234 | 468 | 12/24 | Recojo en tienda |
    | Mastercard | 5512876512597784 | 879 | 09/23 | Delivery         |

    Scenario Outline: El cliente desea comprar las prendas en la bolsa pero no desea todas las prendas
    Given el usuario se encuentra en :"la bolsa"
    And se dispona a comprarlas, pero no desea algunas prendas
    When cuando el usuario interactue con el recuadro "quitar de la bolsa", el sistema las quitara de la bolsa
    Then el sistema procesa la peticion
    And procedera a mostrar un formulario en el cual el usuario debe seleccionar el metodo de pago, datos de la tarjeta, y modalidad
    <paymethod> <Nro de tarjeta> <CVV> <Fecha de caducidad><modalidad>
    | paymethod | Nro de tarjeta | CVV | Fecha de caducidad |modalidad
    | Visa       | 4005123488651234 | 468 | 12/24 | Recojo en tienda |
    | Mastercard | 5512876512597784 | 879 | 09/23 | Delivery         |