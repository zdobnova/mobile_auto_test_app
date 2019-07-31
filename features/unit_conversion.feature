@units
Feature: User is able to convert area units

  Background:
    When I click on Got it button

    Scenario:
    When I select "Acre" from right column
    Then I see "Acre" in from headers
    And I get "247.1054" in To field

  Scenario:
    When I select "Sq Centimetre" from right column
    Then I see "Sq Centimetre" in from headers
    And I get "10000000000" in To field

  Scenario:
    When I select "Sq Mile" from right column
    Then I see "Sq Mile" in from headers
    And I get "0.3861" in To field