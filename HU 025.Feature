Feature: Registro de nuevas prendas

Scenario Outline: Se registra nueva prenda en la App
Given Se verificó que los datos del usuario pertenezcan a un personal autorizado de la tienda
And el usuario se encuentra en el formulario "Nueva Prenda"
When el usuario rellene las características de la nueva prenda ingresante <NombrePrenda> <Precio> <tallasDisponibles> <stock>
And hace click en el botón "Registrar"
Then el sistema verifica que las características no coincidan con una prenda 
And no encuentra una coincidencia, el sistema enviará el registro a espera de aprobación
Example:
|NombrePrenda|Precio|Tallas disponibles|Stock|
|Polo basico negro|35.99|S,M,L|50|
|Jeans clasicos|120|M,XL|15|

Scenario Outline: La prenda ya esta registrada
Given Se verificó que los datos del usuario pertenezcan a un personal autorizado de la tienda
And el usuario se encuentra en el formulario "Nueva Prenda"
When el usuario rellene las características de la nueva prenda ingresante <Precio> <tallasDisponibles> <stock>
And hace click en el botón "Registrar"
Then el sistema verifica que las características no coincidan con una prenda 
And si encuentra una coincidencia muestra el mensaje "Esta prenda ya se encuentra registrada"
Example:
|NombrePrenda|Precio|Tallas disponibles|Stock|
|Polo basico negro|35.99|S,M,L|50|
