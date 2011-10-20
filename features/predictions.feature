Feature: See predictions
  I want to see predictions

  @javascript
  Scenario: See slash predictions
    Given good_luck
    When I visit "/predictions"
    And debug
    Then I should see "Predictions"
    And I_should_see_lhs_links
