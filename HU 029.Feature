Feature: Visualización de ventajas del servicio Premium

Scenario Outline: El usuario no es premium
Given que el usuario se encuentra en la página de inicio de Fast Clothes
When selecciona la opción "modo premium"
Then se carga una página con las ventajas de ser premium
Example:
|Opcion| Simulacion| 
|Modo premium|"Se muestra la pagina de beneficios premium"|

Scenario Outline: El usuario es premium
Given que el usuario se encuentra en la página de inicio de Fast Clothes
When selecciona la opción "modo premium"
Then se muestran los beneficios a los que ya tiene acceso
And la fecha del próximo pago por suscripción al modo premium
Example:
|Opcion| Simulacion| 
|Modo premium|"Se muestra la pagina de beneficios premium y la fecha del pago por suscripción mensual"|


