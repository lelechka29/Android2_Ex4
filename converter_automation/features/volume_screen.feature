@volume
Feature: User is able to convert Volume units

  Background:
    Given I click on Got it button
    And I land on Area screen


    Scenario: User is able to call Menu by swiping
      When I swipe in the Menu
      Then I see app Menu


   Scenario Outline:
    When I swipe in the Menu
    And I select "<target>" from menu
    Then I land on "<result>" screen

    Examples:
      | target | result |
      | Volume | Volume |
      | Currency | Currency |








