Feature: Avanzar.
    Como Dueño del Robot
    Quiero Crear una Ruta.
    Para Poder dar instrucciones de movimiento a mi robot

Scenario: Avanzar
    Given I have opened /createRoute
    When I press "Avanzar (M)" 
    Then I should see 'M'

# Scenario: Avanzar
#     Given I have opened /createRoute
#     When I press "Avanzar (M)" 
#     Then I should see 'M'
