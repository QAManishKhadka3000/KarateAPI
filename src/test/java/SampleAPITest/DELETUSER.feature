Feature: Delete User

Background:
 * url BASEURL
 
 Scenario:1 Delete user using DELETE method
 Given path '/users/2'
 When method DELETE
 Then status 204
 Then print response