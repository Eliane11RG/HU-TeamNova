Feature: Leer comentarios acerca de la prenda

Scenario Outline: Se realizo una compra con exito
Given que el sistema verifico al <usuario>
And accedio a la busqueda de una <prenda> en la app
When el usuario seleccione una <prenda> este podra observar una seccion de
"Comentarios" dentro de ella
Then el <usuario> podra ver diversos <comentarios> de clientes que adquirieron esa <prenda>
And el <usuario> podra dejar un <comentario> y una <calificacion>

Example:
|perfil| prenda| comentario| calificacion|
|AyerMebañe| playeras |XL| 15$| Es util esta playera| 5 Estrellas|
|AyerMebañe| playeras| |l| 10$| Es inutil esta playera| 3 Estrellas|
|AyerMebañe| playeras| |S| 11$| esta playera es una playera| 1 Estrellas|


Scenario Outline: No se logra visualizar las reseñas del producto
Given el cliente no esta registrado en la app
And accedio como <guest>
When el <guest> seleccione una <prenda>
Then este se le limitada a solo conocer la <prenda> y su <Precio> con <Tallas> 
And este no podra obtener los beneficios de un <usuario>

Example:
|guest| prenda| Precio| Tallas|
|Invitado| Abrigo| 50$| XL|
|Invitado| Abrigo| 40$| L |
|Invitado| Abrigo| 30$| S |