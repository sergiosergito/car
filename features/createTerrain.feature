Feature:
    Como Jugador
    Quiero ver un terreno del tamanho deseado
    Para jugar a gusto

Scenario: Mensaje de creacion de terreno
    Given visito la pagina de crear terreno
    Then Deberia ver un mensaje "Crear Terreno "