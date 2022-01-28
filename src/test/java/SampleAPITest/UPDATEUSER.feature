Feature: Update the User Details

Background:
 * url BASEURL
 
 Scenario:1 update user with PUT method
 Given path '/users/2'
 Given request { "name": "Ashish Khadka" ,"job": "Aircraft Maintance Engineer"}
 When method PUT
 Then status 200
 And match header Content-Type contains 'application/json'
 Then print response
 Then def NAME = response.name
 Then def JOB = response.job
 Then print 'The Name of the Created Person  is: ER ' +NAME
 Then print 'The Job is: ' +JOB
 
 #----------------------using PATCH Method------------------------------------------------>
  Scenario:2 update user with PATCH method
 Given path '/users/2'
 Given request { "name": "Bidhi Khadka" ,"job": "Nurse"}
 When method PATCH
 Then status 200
 And match header Content-Type contains 'application/json'
 Then print response
 Then def NAME = response.name
 Then def JOB = response.job
 Then print 'The Name of the Created Person  is: ' +NAME
 Then print 'The Job is: ' +JOB