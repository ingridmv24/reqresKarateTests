Feature: Register user in reqres API

  Background: Set urlBase
    * url urlBase
    * def jsonResponse = read('../schemas/registerUSerSchema.json')
    * def registerUserPath = '/api/register'

  @RegisterUserSuccessfull
  Scenario Outline: Register user successfully
    Given path registerUserPath
    And request
    """
    {
    "email": "eve.holt@reqres.in",
    "password": "pistol"
    }
    """
    When method post
    Then match response == jsonResponse
    * print response
    And match response.token == '<responseToken>'
    And status <status>

    Examples:
      | responseToken     | status |
      | QpwL5tke4Pnpja7X4 | 200    |

  @RegisterUserUnsuccessfull
  Scenario Outline: Register user unsuccessfully
    Given path registerUserPath
    And request
    """
    {
    "email": "eve.holt@reqres.in",
    }
    """
    When method post
    Then match response.error == '<responseMessage>'
    * print response
    And status <status>

    Examples:
      | responseMessage  | status |
      | Missing password | 400    |