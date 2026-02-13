@users
Feature: Users
  Background:
    * url baseUrl

  Scenario: get all users
    * def result = call read('classpath:examples/petstore/addMascota/addMascota.feature@addMascota')
    * def petId = result.petId
    Given path 'v2/pet', petId
    When method get
    Then status 200