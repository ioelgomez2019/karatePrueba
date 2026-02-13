@addMascota
Feature: Add Mascota
  Background:
    * url baseUrl

  Scenario: add mascota
    * def petId = java.lang.System.currentTimeMillis()
    Given path 'v2/pet'
    * def payload =
    """
    {
      "id": #(petId),
      "category": {
        "id": 1,
        "name": "Perros"
      },
      "name": "Firulais",
      "photoUrls": [
        "https://foto.com/perro.jpg"
      ],
      "tags": [
        {
          "id": 1,
          "name": "vacunado"
        }
      ],
      "status": "available"
    }
    """
    And request payload
    When method post
    Then status 200
    And match response == payload
