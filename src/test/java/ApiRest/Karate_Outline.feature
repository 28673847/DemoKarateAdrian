Feature: Plan de pruebas Get

  Background:
    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def userPath = '/users/'


  Scenario Outline: Caso de Prueba GET <TC>
    Given url baseUrl + userPath + '<ID>'
    When method GET
    Then status <estadoHTTP>
    #And match response.name == "Leanne Graham"
    Examples:
      |TC    |ID |estadoHTTP|
      |Caso 1|1  |200       |
      |Caso 2|2  |200       |
      |Caso 3|3  |200       |
      |Caso 4|50 |404       |

@ignore
  Scenario Outline: Caso de Prueba POST
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When request{'<title>':'<Vtitle>','<body>': '<Vbody>','<userId>': <VuserId>}
    And method POST
    Then status 201
    Examples:
      | title | Vtitle     |  body   | Vbody    |userId| VuserId|
      | title |            |  body   | "QA"     |userId|  1     |
      | title |  null      |  body   | "QA"     |userId|  2     |
      | title | "morpheus" |  body   | "leader" |userId|  3     |
      | title | "morpheus" |  body   | "leader" |userId|  4     |
