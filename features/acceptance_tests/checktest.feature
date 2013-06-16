Feature: Check Edit and Done Button
 To check edit and done button

  Background:
    Given I am in test

  @complete_workout
  Scenario Outline: Check exercises present in workout
    Given I am in home screen
    When  I click on "Edit" button
    Then  I see "Done" button

  Examples:
    | run |
    | 1   |