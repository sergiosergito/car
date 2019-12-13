Feature: Ver el terreno
    Como Dueno del Robot
    Quiero Inicar Coordenadas
    Para saber donde va a comenzar a moverse mi robot

Scenario: Inicar Coordenadas
    Given I have opened /carPositionSet
    Then my car is at x equal 2 and y equal 2 I should see it at 2, 2 coordenate

    