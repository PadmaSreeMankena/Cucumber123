Feature: I am automation functionality of Add Skills in Orange HRM application
	
Background: Common step
    Given User launch chrome browser
    When User opens URL "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"

  Scenario: Successful Login with valid page
    And User enters username as "Admin" and password as "admin123"
    Then Go to Skill Page
    When Add skills with skillname as "Java1" and skilldescription as "Javadesc 1"
    When Click on logout button
    Then Close Browser
  
  Scenario: Successful job data entry
    And User enters username as "Admin" and password as "admin123"
    Then Enter jobs record with jobtitle as "Manager" , job decs as "Manager desc" and job note as "Managers note" 
    When Click on logout button
    Then Close Browser
      