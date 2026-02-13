@updateMascota
Feature: Update Mascota
  Background:
    * url baseUrl

  Scenario: update mascota
    * def result = call read('classpath:examples/petstore/addMascota/addMascota.feature@addMascota')
    * def petId = result.petId
    * def basePayload = result.payload
    Given path 'v2/pet'
    * def payload =
    """
    {
      "id": #(petId),
      "category": #(basePayload.category),
      "name": "Firulais Updated",
      "photoUrls": #(basePayload.photoUrls),
      "tags": #(basePayload.tags),
      "status": "sold"
    }
    """
    And request payload
    When method put
    Then status 200
    And match response == payload
    And match response.status == 'sold'
