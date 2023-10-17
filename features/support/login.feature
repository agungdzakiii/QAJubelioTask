@Login 
Feature: Login Page

Scenario: Success Login with correct credential
    Given I am on the homepage
    When I fill my credential
    And I click Masuk
    Then I should be logged in 

    