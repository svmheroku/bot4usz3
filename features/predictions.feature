Feature: See predictions
  I want to see predictions


  Scenario: See slash predictions
    Given good_luck
    When I visit "/predictions"
    Then I should see "Predictions"
    And I_should_see_lhs_links

  Scenario: See predictions/fx
    Given good_luck
    When I visit "/predictions/fx"
    Then I should see "Past Forex Predictions"
    And I should see "New Forex Predictions"

  @javascriptx
  Scenario: See /fx_past
    Given good_luck
    When I visit "/fx_past"
    Then I should see "Results Of Past Forex Predictions"
    And I should see "Week: 2011-10-09 Through 2011-10-14"

