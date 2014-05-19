Feature: Load the homepage
	I want the page to display everything correctly
	

Scenario: See the title
	Given I am in "app\views\netflix"
	And the file "database.html.erb" exists
	And I visit the "http:/127.0.0.1:3000/database.html" page
	
	
	
	