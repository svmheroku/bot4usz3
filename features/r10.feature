Feature: See r10 index action
  I want to see r10 index action.

  @javascript
  Scenario: Go to slash
    Given good_luck
    When I visit "/"
    Then I should see "Welcome Aboard"

