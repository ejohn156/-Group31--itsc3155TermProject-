Feature: Fully functional nav bar
  
  As an app user
  So that I can navigate the entire app
  I want to be able to visit each page using the navigation bar located at the top each page
  
  Scenario: As a gym member i want to be able to navigate from the home page to the progress page
    Given I am on the home page
    When I click the "PROGRESS" link
    Then I should be on the "Progress" page
    
    Scenario: As a gym member i want to be able to navigate from the home page to the exercise page
    Given I am on the home page
    When I click the "EXERCISES" link
    Then I should be on the "Exercise" page
    
    Scenario: As a gym member i want to be able to navigate from the home page to the new exercise page
    Given I am on the home page
    When I click the "NEW EXERCISE" link
    Then I should be on the "New Exercise" page
    
