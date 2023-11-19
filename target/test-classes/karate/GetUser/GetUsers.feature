Feature:

  Scenario: To get the list of user
    Given url 'https://reqres.in/api/users?page=2'
    And headers {Accept:'application/json', Content-Type:'application/json'}
    When method get
    Then status 200
#    And def name = response[0].name
    And  def responseArray = response