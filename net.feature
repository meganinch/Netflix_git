Feature: Load the homepage
	I want the page to display everything correctly
	

Scenario: See a map
	Given I am in "app\views\netflix"
	And the file "database.html.erb" exists
	When I visit the "/map" page
	Then I can see the map
	
	Scenario: Read form
	Given I am in "app\views\netflix"
	And I visit the "/contact" page	
	Then I see the text
	
	
	
	