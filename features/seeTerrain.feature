Feature: Ver el terreno
    Como Dueno del Robot
    Quiero Ver el terreno
    Para Observar como se creo el terreno

Scenario: ver el terreno
    Given I visited /dimensions 
    And is a terrain with a width of 5 and height of 5 I should see "_" in each cell

Scenario: ver una casilla con '_'
    Given I visited /dimensions 
    And is a cell with x in 0 and y in 0 I should see "_" in it
