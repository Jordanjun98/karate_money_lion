Feature:

  Scenario: 1. Create a user to the endpoint
    Given url 'https://reqres.in/api/users'
    And header Authorization = 'Bearer 7175d5fc7f5b180b0eccbfcad0fe156f7e98a8b7d61b13857cc5c911a92b1def'
    And request
                """
                { "name":"test123",
                "job":"IT"
               }
                """
  #    * multipart file loadfile = {read: 'GG.json',  contentType: 'application/json'}
    When method post
    Then status 201