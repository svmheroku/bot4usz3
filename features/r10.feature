Feature: See r10 index action
  I want to see r10 index action.

  @javascript
  Scenario: Homepage
    Given I am on the homepage
    And debug
    Then I should see "Bot4.us"

