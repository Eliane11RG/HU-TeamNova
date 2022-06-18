Feature: Eliminar prendas del catálogo

Scenario Outline: La prenda es eliminada  
Given que se verificó que los datos del usuario pertenezcan a un personal autorizado de la tienda
And el usuario da click a una de las prendas disponibles
When selecciona la opción eliminar, se genera un mensaje "Está seguro de eliminar la prenda" con dos opciones "Si", "No"
And da click a sí
Then la prenda será eliminada del catálogo y del registro
Example:
|Opcion| Simulacion| 
|Eliminar|"La prenda ya no es visible para ningun usuario"|

Scenario Outline: La prenda se suspende 
Given que se verificó que los datos del usuario pertenezcan a un personal autorizado de la tienda
And el usuario da click a una de las prendas disponibles
When selecciona la opción eliminar, se genera un mensaje "Está seguro de eliminar la prenda" con dos opciones "Si", "No"
And da click a No, se genera un mensaje con dos opciones "Suspender" y "Cancelar"
And da click en "Suspender"
Then la funcionalidad "suspender visualización de prendas" será ejecutará
Example:
|Opcion| Simulacion| 
|Suspender|"La prenda ya no es visible para el usuario comprador"|

Scenario Outline: La prenda no es eliminada 
Given que se verificó que los datos del usuario pertenezcan a un personal autorizado de la tienda
And el usuario da click a una de las prendas disponibles
When selecciona la opción eliminar, se genera un mensaje "Está seguro de eliminar la prenda" con dos opciones "Si", "No"
And da click a No, se genera un mensaje con dos opciones "Suspender" y "Cancelar"
And da click en "Cancelar"
Then la prenda no es eliminada.
Example:
|Opcion| Simulacion| 
|Cancelar|"Se cancela la accion, el usuario personal puede seguir revisando el catalogo"|
