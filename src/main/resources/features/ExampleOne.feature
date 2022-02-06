Feature: validate get request
	
	@getExampleOne
  Scenario: verify current weather data
    Given url 'http://api.openweathermap.org/data/2.5/weather?q=London&appid=88586358a2f5c5dfafb6ce9625469d83'
    When method get
    Then status 200
    And match response.weather[0].description contains 'clear sky'
    And match response.name contains 'London'
    And match response.weather[0].description == '#string'

  
  @getExampleTwo
  Scenario Outline: verify current weather data with outline data
    Given url '<url>'
    When method get
    Then status 200

    Examples: 
      | url                                                                                            |
      | http://api.openweathermap.org/data/2.5/weather?q=London&appid=88586358a2f5c5dfafb6ce9625469d83 |

  
  @postExample
  Scenario Outline: verify dummy sample rest api post request
    Given url '<url>'
    And request {"name": "testOne", "salary": "123", "age": "23"}
    When method post
    Then status 200

    Examples: 
      | url                                           |
      | http://dummy.restapiexample.com/api/v1/create |

  

      

      
      
      