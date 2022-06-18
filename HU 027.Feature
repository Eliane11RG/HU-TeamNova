Feature: Suspender la visualización de prendas en el catálogo 

Scenario Outline: La prenda es quitada del catálogo, pero no del registro
Given Se verificó que los datos del usuario pertenezcan a un personal autorizado de la tienda
And el usuario da click a una de las prendas disponibles
When selecciona la opción suspender, se genera un cuadro con tres opciones "Suspender", "Suspender temporalmente", "cancelar"
And el usuario da click a "suspender"
Then la prenda ya no será visible para el usuario comprador.
Examples:
|Opcion| Simulacion| 
|Suspender|"La prenda ya no es visible para el comprador"|

Scenario Outline:La prenda es retirada temporalmente del catálogo, pero no del registro 
Given Se verificó que los datos del usuario pertenezcan a un personal autorizado de la tienda
And el usuario da click a una de las prendas disponibles
When selecciona la opción suspender, se genera un cuadro con tres opciones "Suspender", "Suspender temporalmente", "cancelar"
And el usuario da click a "suspender temporalmente"
Then el usuario puede ingresar el tiempo que desea que la prenda no sea visible para el comprador en horas. <time>
Examples:
|Opcion|Time| Simulacion| 
|Suspender Temporalmente|720 |"La prenda ya no es visible para el comprador por el timepo indicado"|

Scenario Outline: La prenda no es quitada del catálogo.
Given Se verificó que los datos del usuario pertenezcan a un personal autorizado de la tienda
And el usuario da click a una de las prendas disponibles
When selecciona la opción suspender, se genera un cuadro con tres opciones "Suspender", "Suspender temporalmente", "cancelar"
And el usuario da click a "Cancelar"
Then la prenda no se suspende.
Examples:
|Opcion| Simulacion| 
|Cancelar|"Se cancela la accion, el usuario personal puede seguir revisando el catalogo"|
