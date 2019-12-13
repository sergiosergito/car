Feature:
    Como Jugador
    Quiero ver la tabla del terreno creado
    Para  conocer el terreno
    
Scenario: Terreno de dimensiones deseadas
    Given I have opened /dimensions
    Then width in x should be 5
    And height in y should be 5
    
