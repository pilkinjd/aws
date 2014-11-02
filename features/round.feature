Feature: dealing with rounds

  Background:
    Given there are some rounds


  Scenario: showing the rounds
    When I visit the rounds page
    Then I should see the rounds

    @wip
  Scenario: new round
    When I visit the rounds page
    And I click on the new round button

    When I complete the new round form
    Then I should see the new round
