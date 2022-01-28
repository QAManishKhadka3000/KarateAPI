Feature: Get the Resources Details

Background:
 * url BASEURL
 
 Scenario:1 Get the Resources details
 Given path '/unknown'
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
 Then def Color = response.data[0].color
 Then def Year = response.data[0].year
 Then def Name = response.data[0].name
 Then def Panton = response.data[0].pantone_value
 Then print 'The ID is: ' +ID
 Then print 'The Color is: ' +Color
 Then print 'The Year is: ' +Year
 Then print 'The Name is: ' +Name
 Then print 'The Panton is: ' +Panton
 
  
 Scenario: 2 Get the Single Resources Details
 Given path '/unknown/2'
 When method GET
 Then status 200
 Then print response
 Then def Text = response.support.text
 Then def URL = response.support.url
 Then print 'The Given Text is: ' +Text
 Then print 'The Given URL is: ' +URL
 Then def ID = response.data.id
 Then def Color = response.data.color
 Then def Year = response.data.year
 Then def Name = response.data.name
 Then def Panton = response.data.pantone_value
 Then print 'The ID is: ' +ID
 Then print 'The Color is: ' +Color
 Then print 'The Year is: ' +Year
 Then print 'The Name is: ' +Name
 Then print 'The Panton is: ' +Panton
 
 
 Scenario: 3 Get the Single Resources Not found
 Given path '/unknown/23'
 When method GET
 Then status 404
 Then print response