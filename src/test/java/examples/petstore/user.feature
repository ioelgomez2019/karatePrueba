Feature: Users
  Background:
    * url 'https://petstore.swagger.io/'

  Scenario: get all users
    Given path 'v2/pet/'+'1'
    When method get
    Then status 200