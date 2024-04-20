Feature: Plan de pruebas CSV

  Background:
    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def userPath = '/users/'


  Scenario Outline: Caso de Prueba GET <TC>
    Given url baseUrl + userPath + '<ID>'
    When method GET
    Then status <estadoHTTP>
    #And match response.name == "Leanne Graham"
    Examples:
    |read ('test.csv')|