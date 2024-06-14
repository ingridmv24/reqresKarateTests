Feature: Update user in reqres API

  Background: Set urlBase
    * url urlBase

  @UpdateUser
  Scenario Outline: Update user successfully
    * def jsonRequest = read('../json/'+'<json>')
    * jsonRequest.name = '<name>'
    * jsonRequest.job = '<job>'
    Given path '<path>'
    And request jsonRequest
    When method put
    Then status <status>
    * print response
    And match response.name == '<name>'
    And match response.job == '<job>'

    Examples:
      | path         | name    | job                | json                | status |
      | /api/users/2 | Luciana | Frontend developer | bodyCreateUser.json | 200    |
      | /api/users/3 | Juan    | Data scientist     | bodyCreateUser.json | 200    |