Feature:
    Como Jugador
    Quiero leer un mensaje de crear terreno
    Para saber que estoy en esa pagina

Scenario: Mensaje de creacion de terreno
    Given visito la pagina de crear terreno
    Then Deberia ver un mensaje "Crear Terreno "