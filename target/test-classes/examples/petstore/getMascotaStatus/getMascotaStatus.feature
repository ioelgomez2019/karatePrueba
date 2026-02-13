@getMascotaStatus
Feature: Get Mascota Status
  Background:
    * url baseUrl

  Scenario: get mascota status
    * def updateResult = call read('classpath:examples/petstore/updateMascota/updateMascota.feature@updateMascota')
    * def petId = updateResult.petId
    * def updatedPayload = updateResult.payload
    Given path 'v2/pet/findByStatus'
    And param status = 'sold'
    When method get
    Then status 200
    And match response contains deep { id: #(petId), name: #(updatedPayload.name), status: 'sold' }
