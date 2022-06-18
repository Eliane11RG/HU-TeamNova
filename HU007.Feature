Feature: Buscar tiendas

Scenario Outline: Se busca tiendas disponibles en la app
Given el usuario haya dado click en la pestaña <tiendas disponibles>
And  el usuario se encuentre con unos recuadros a llenar para saber su <ubicacion>
When  el usuario termine de rellenar dichos recuadros
And haya dado click en registrar 
Then la app le mostrará las tiendas más cercanas a su ubicación
Examples:
    |ubicacion| |Tiendas disponibles| 
    |Chorrillos| |Metro|
    |Miraflores| |Ripley| 



Scenario Outline:   El usuario selecciona una tienda disponible

Given el usuario ya encontró y seleccionó una "tienda" cerca a su ubicación
And la app le brindará unos filtros para localizar sus tipos de prendas de forma más rápida
When  el usuario termine de aplicar los "filtros"
And haga click en la opción buscar
Then la app le mostrará diversas prendas según los filtros seleccionados
 Examples: 
 | Tienda| |Tipo de prenda|
 | Ripley| |Poleras|
 |Saga Falabella| |Pantalones|
