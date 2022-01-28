Feature: Get the User Details in delay

Background:
 * url BASEURL
 
 Scenario:1 Get the user details in Delay
 Given path '/users'
 Given param delay = '2'
 When method GET
 Then status 200
 Then print response
 Then def Page = response.per_page
 Then def Total = response.total
 Then print 'The per_page is: ' +Page
 Then print 'The total value are: ' +Total
 Then def PAGE = response.page
 Then def TotalPages = response.total_pages
 Then print 'The page is: ' +PAGE
 Then print 'The total pages value are: ' +TotalPages
 Then def Text = response.support.text
 Then def URL = response.support.url
 Then print 'The Given Text is: ' +Text
 Then print 'The Given URL is: ' +URL
 Then def ID = response.data[0].id
 Then def FirstName = response.data[0].first_name
 Then def LastName = response.data[0].last_name
 Then def Email = response.data[0].email
 Then def Avatar = response.data[0].avatar
 Then print 'The ID is: ' +ID
 Then print 'The First Name is: ' +FirstName
 Then print 'The Last Name is: ' +LastName
 Then print 'The Email is: ' +Email
 Then print 'The Avatar is: ' +Avatar
 