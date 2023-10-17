@Stock
Feature: Stock Page

Background: 
    Given I am on the homepage
    When I fill my credential
    And I click Masuk
    Then I should be logged in 

Scenario: Success managing product stock
    When I am going to Inventory page
    And I fill "Keyboard Mechanical" in field Persediaan
    And I click on checkbox
    And I click Penyesuaian Persediaan
    And I click on +- 
    When I update inventory quantity to "10"
    And I click Simpan 
    Then I should see successfull notification