Feature: Dejar un comentario sobre una prenda adquirida

Scenario Outline: Se realizo una compra con exito
Given el usuario realizo una <compra> con exito
And recibio o recogio la <prenda_adquirida>
When el usuario revise su historial de "Compras" la app le notificara
que puede dejar un <comentario> de la <prenda_adquirida>
Then el usuario podra dejar su <comentario>
And podra dar una <calificacion>

Example:
|perfil| Compras| |prenda| comentario| calificacion|
|AyerMebañe| Compras| |Playera| Me gustan las playeras| 5 Estrellas|


Scenario Outline: El cliente busca dejar un comentario de una prenda
Given el cliente esta registrado en la app
And accedio a la ventana de la <prenda>
When el cliente ingrese a la seccion de "Comentarios"
Then este podra dejar un <comentario> de respuesta a otro <comentario> 
And no podra valorar la <prenda>

Example:
|perfil| Compras| |prenda| comentario| calificacion|
|AyerNoMebañe| Compras| |Playera| Curiosa tu reseña|