Feature: fetching User Details

  Scenario: testing the get call for User Details

    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
#Asserting the reponse
#response variable is holding the Actual response from API
#Right hand side value is holding the expected Response
    And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}