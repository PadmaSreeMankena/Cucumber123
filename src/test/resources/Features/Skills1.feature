Feature: I am automation functionality of Add Skills in Orange HRM application
	
Background: Common step
    Given User launch chrome browser
    When User opens URL "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"

  Scenario: Successful Login with valid page
    And User enters username as "Admin" and password as "admin123"
    Then Go to Skill Page
    When Add skills with skillname and skilldescription
         |SkillName|Skilldesc|
         |Oracle123   |Oracle123 desc|
         |Java123     |Java123 desc|
         |Selenium123 |Selenium123 desc|
    When Click on logout button
    Then Close Browser
    
     Scenario: Successful job data entry
    And User enters username as "Admin" and password as "admin123"
    Then Enter jobs record with jobtitle, job decsand job note
          |JobTitle|JobDesc    |JobNote|
          |Sales1  |Sales1 desc|Sales1 Note|
          |Sales2  |Sales2 desc|Sales2 Note| 
    When Click on logout button
    Then Close Browser