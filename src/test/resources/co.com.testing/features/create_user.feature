Feature: Create user in reqres API

  Background: Set urlBase
    * url urlBase

  @CreateUser
  Scenario Outline: Create user successfully
    * def jsonRequest = read('../json/'+'<json>')
    * jsonRequest.name = '<name>'
    * jsonRequest.job = '<job>'
    Given path '<path>'
    And request jsonRequest
    When method post
    Then status <status>
    * print response
    And match response.name == '<name>'
    And match response.job == '<job>'

    Examples:
      | path       | name   | job           | json                | status |
      | /api/users | Ingrid | QA automation | bodyCreateUser.json | 201    |
