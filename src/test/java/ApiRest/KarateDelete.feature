Feature: Plan de pruebas Karate Delete
  @smoke
  Scenario: Caso de Prueba DELETE
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method DELETE
    Then status 200