@constuMascota
Feature: Consultar Mascota
  Background:
    * url baseUrl

  Scenario: consultar mascota
    * def result = call read('classpath:examples/petstore/updateMascota/updateMascota.feature@updateMascota')
    * def petId = result.petId
    * def payload = result.payload
    Given path 'v2/pet', petId
    When method get
    Then status 200
    And match response == payload
