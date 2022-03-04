Feature: fetching User Details

  Scenario: testing the get call for User Details

    Given url 'https://reqres.in/api/users/3'
    When method GET
    Then status 200
#Asserting the reponse
#response variable is holding the Actual response from API
#Right hand side value is holding the expected Response
#Reading the file ExpectedOutput.json and storing same response in variable expectedResult
    Given expectedResult=read('./resources/ExpectedOutput.json')
#Asserting the Actual Response with the Expected Response
    And match response == expectedResult