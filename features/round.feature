Feature: dealing with rounds

  Background:
    Given there are some rounds


  Scenario: showing the rounds
    When I visit the rounds page
    Then I should see the rounds

  Scenario: new round
    When I visit the rounds page
    And I click on the new round button

    When I complete the new round form
    Then I should see the new round

  Scenario: Show round
    When I visit the rounds page
    And I click on the round name
    Then I should see the show page for the round

  Scenario: Edit a round
    When I visit the edit page for a round
    And I update the round details
    Then I should see the updated round

  Scenario: Delete a round
    When I visit the edit page for a round
    And I delete the round details
    Then I should see the round has been deleted

