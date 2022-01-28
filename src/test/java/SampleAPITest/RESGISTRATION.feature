Feature: Register User

Background:
 * url BASEURL
 
 
  Scenario:1 UnSuccessful Register(missing Password) user using POST method
 Given path '/register'
 Given request {"email": "eve.holt@reqres.in" }
 When method POST
 Then status 400
 And match header Content-Type contains 'application/json'
 Then print response
 
 Scenario:2 UnSuccessful Register(missing Email) user using POST method
 Given path '/register'
 Given request {"password": "pistol" }
 When method POST
 Then status 400
 And match header Content-Type contains 'application/json'
 Then print response
 
 Scenario:3 Successful Register user using POST method
 Given path '/register'
 Given request {"email": "eve.holt@reqres.in" ,"password": "pistol" }
 When method POST
 Then status 200
 And match header Content-Type contains 'application/json'
 Then print response
 Then def ID = response.id
 Then def Token = response.token
 Then print 'The user ID is: ' +ID
 Then print 'The user token is: ' +Token