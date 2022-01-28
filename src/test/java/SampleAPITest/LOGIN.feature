Feature: User login

Background:
 * url BASEURL
 
 
 Scenario:1 UnSuccessful login(missing Password) user using POST method
 Given path '/login'
 Given request {"email": "eve.holt@reqres.in" }
 When method POST
 Then status 400
 And match header Content-Type contains 'application/json'
 Then print response
 
 Scenario:2 UnSuccessful Login(missing Email) user using POST method
 Given path '/login'
 Given request {"password": "pistol" }
 When method POST
 Then status 400
 And match header Content-Type contains 'application/json'
 Then print response
 
 Scenario:3 Successful login user using POST method
 Given path '/login'
 Given request {"email": "eve.holt@reqres.in" ,"password": "pistol" }
 When method POST
 Then status 200
 And match header Content-Type contains 'application/json'
 Then print response
 Then def Token = response.token
 Then print 'The user token is: ' +Token