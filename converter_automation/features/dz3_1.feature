@Lesson3_ex1
Feature: User is able to convert Volume units

  Background:
    Given I click on Got it button
    And I land on Area screen


  Scenario Outline: DZ_lesson3_ex1
  When I select SqKilometre in From
  And I select "<radiobutton>" in To
  Then I land on "<results>" header value To

  Examples:
  | radiobutton | results |
  | Sq Kilometre | 1 |
  | Sq Metre | 1000000 |
  | Sq Centimetre | 10000000000|
