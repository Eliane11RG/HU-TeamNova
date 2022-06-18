Feature: Conocer la aceptación de los usuarios

Scenario Outline: El usuario quiere ver los comentarios acerca de la app

Given el usuario tiene dudas a la hora de comprar en la aplicación
And el usuario podrá observar que en la app existe una pestaña de "comentarios"
When seleccione dicha opción
Then podrá ver los comentarios de los demás usuarios acerca de la app.
Examples:
    |Comentarios| 
| La app es muy fluida y confiable|


Scenario Outline:   El usuario procede a la lectura de los comentarios

Given el cliente quiere leer las opiniones y valoraciones de los demás usuarios acerca de la app
And observa que hay un "filtro" la cuál te permitirá ver los comentarios con "mayor valoración"
And los de "menor valoración"
When seleccione cualquier opción
And haga click en la opción de buscar
Then le aparecerá el "tipo de comentario" establecido según él la opción que haya seleccionado.

 Examples: 
|filtro| |Tipo de comentario|
| Mayor valoración|  | Esta la mejor app que he probado|
| Menor valoración|  | La app no es muy fluida , presenta algunos errores| 
