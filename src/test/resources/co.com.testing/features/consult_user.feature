Feature: Consult reqres API

  Background: Set url base and headers
    * url urlBase
    * configure headers = { 'Content-type': 'application/json', 'Accept': '*/*' }

  @GetUserListByPage
  Scenario Outline: Get user list by page successfully
    * def jsonResponse = read('../schemas/'+'<json>')
    Given path '/api/users'
    And param page = '<page>'
    When method get
    Then match each $.data[*] == jsonResponse
    And match response.page == <page>
    And match response.data[0].id == '#? _ == 1 || _ == 7'
    And status <status>
    And match response != 'Error'

    Examples:
      | page | json                | status |
      | 1    | listUserSchema.json | 200    |
      | 2    | listUserSchema.json | 200    |






