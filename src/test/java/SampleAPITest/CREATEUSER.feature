Feature: Create User

Background:
 * url BASEURL
 
 Scenario:1 Create user using POST method
 Given path '/users'
 Given request { "name": "Manish Khadka" ,"job": "Quality Assurance"}
 When method POST
 Then status 201
 And match header Content-Type contains 'application/json'
 Then print response
 Then def NAME = response.name
 Then def JOB = response.job
 Then def ID = response.id
 Then print 'The Name of the Created Person  is: ER ' +NAME
 Then print 'The Job is: ' +JOB
 Then print 'The ID is: ' +ID