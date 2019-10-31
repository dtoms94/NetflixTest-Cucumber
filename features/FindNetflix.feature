Feature: Navigating to Netflix
  Scenario: Navigating to Netflix
    Given I am on the Google Search Page
    And I search for "Netflix"
    And I see results
    When I click the link
    Then I should see the homepage
