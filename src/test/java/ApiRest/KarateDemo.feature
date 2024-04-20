Feature: Plan de pruebas Karate

  Scenario: Caso de Prueba POST
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When request {'title':'foo','body': 'bar','userId': 1}
    And method POST
    Then status 200