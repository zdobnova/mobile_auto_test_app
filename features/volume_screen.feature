@volume
Feature: User is adle to convert Volume units

  Background:
    When I click on Got it button
    And I land on Area screen


    Scenario: User is able to call menu by swiping
      When I swipe in the menu
      Then I see app menu

    Scenario Outline:
        When I swipe in the menu
        And I select "<target>" from menu
        Then I land on "<result>" from menu

      Examples:
      |target|result|
#      |Power |Power |
#      |Volume1|Volume|
#      |Currency|Currency|


