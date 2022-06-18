Feature: Simular proceso de probador

    Scenario Outline: El cliente desea probar el probador por primera vez
    Given el usuario ha descargado la aplicación
    When el usuario ingrese a la aplicación
    And sea usuario nuevo
    Then el sistema pedirá que ingrese los siguientes datos:
    <nombre>,<apellidos>, <talla>, <peso>, <tipo de cuerpo> y <contraseña>. 
    And procederá a registrarlo y mostrarle las tiendas disponibles
    Example: 
    | ID de Usuario               | Talla | Peso  | Tipo de cuerpo | Contraseña        |
    | José Alvarez Terrones       | M     | 80 kg | Mesomorfo      | elpepe123         |
    | Pepe Castillo Fudge         | L     | 90 kg | Endomorfo      | juanitoprimero778 |
    | Priscila Tenorio Villanueva | S     | 65 kg | Ectomorfo      | diosesGrand3      |
    | Jezabel Rios Castro         | S     | 50 kg | Ectomorfo      | cwywcwyn29009     |
    
    
    Scenario Outline: El cliente desea usar el simulador
    Given el suario ha descargado la aplicacion
    When el usuario ingrese a la aplicacion <ID de Usuario> <contraseña>
    And sea un usuario ya registrado 
    Then el sistema pasara a mostrarle las tiendas disponibles
    
    Example:
    | Id de Usuario         | Contraseña |
    | José Alvarez Terrones | elpepe123
    | Pepe Castillo Fudge         | juanitoprimero778 |
    | Priscila Tenorio Villanueva | diosesGrand3      |
    | Jezabel Rios Castro         | cwywcwyn29009     |


   


  


