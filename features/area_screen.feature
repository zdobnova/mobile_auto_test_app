@area
Feature: User is able to convert area units

  Background:
    When I click on Got it button

#  Scenario: User is able to dismiss help
#    Given I land on help popup
#    When I click on Got it button
#    Then I land on Area screen

  @wip
  Scenario: User is able to swap values
    Given I see "Sq Kilometre" in From headers
    And I see "Sq Metre" in to header
    When I click on Swap button
    Then I see "Sq Metre" in From headers
    And I see "Sq Kilometre" in to header

  Scenario Outline:  User is able to convert default units
    Given I click on Clear it button
    When I  enter "<target>" to From field
    Then I get "<result>" i n To field
    Examples:
      |target|result|
      |1     |1000000|
      |2     |2000000|
      |3     |3000000|


  Scenario: User is able to use soft keyboard to enter values
    Given I click on Clear it button
    When I click on From field
    And I press "12" on soft keyboard
    Then I get "12000000" i n To field

  Scenario:
    When I select "Hectare" from left column
    Then I see "Hectare" in From headers
    And I get "10000" i n To field



