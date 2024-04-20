Feature: Plan de pruebas Get

  Background:
    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def userPath = '/users'

  @smoke
  Scenario: Caso de Prueba GET1
   # Given url baseUrl + userPath + '/1'
    Given url baseUrl + userPath + /1'
    When method GET
    Then status 200
    And match response.name == "Leanne Graham"

  Scenario: Caso de Prueba GET2
    Given url baseUrl + userPath + '/2'
    When method GET
    Then status 200
    And match response.username == "Antonette"

  @smoke
  Scenario: Caso de Prueba GET3
    Given url baseUrl + userPath + '/3'
    When method GET
    Then status 200
    And match response.email == "Nathan@yesenia.net"