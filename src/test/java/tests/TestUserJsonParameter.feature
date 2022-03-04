Feature: fetching User Details

  Scenario: testing the get call for User Details
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
   #Verifying the JSON response by providing same in feature file



   ##Creating JSON path to verify the values of particular parameters##
    And match response.data.first_name == "Janet"