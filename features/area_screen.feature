@area
Feature: User is able to convert area units
  @menu
  Scenario: User is able to dismiss  help
    Given I land on help popup
    When I click on Got it button
    Then I land on Area screen
    @wip
    Scenario: User is able to swap values
      Given I click on Got it button
      And I see "Sq Kilometre" in From headers
      And I see "Sq Metre" in to header
      When I click on Swap button
      Then I see "Sq Metre" in From headers
      And I see "Sq Kilometre" in to header

      Scenario Outline:  User is able to convert default units
        Given I click on Got it button
        And I click on Clear it button
        When I  enter "<target>" to From field
        Then I get "<result>" i n To field
        Examples:
        |target|result|
        |1     |1000000|
        |2     |2000000|
        |3     |3000000|



