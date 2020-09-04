@custom
Feature: Testing basic functionality
  This feature will test basic functionality
  and to help gaining experience understanding cucumber

  @custom_01
  Scenario Outline: Clicking the link in menubar
      Given the user is on the "home" page
      When the user clicks on link "<link>"
      Then the user should go to the "<page>" page
      Scenarios:
      | link        | page      |
      | Arts        | arts      |
      | Biography   | biography |
      | Geography   | geography |
      | History     | history   |
      | Mathematics | math      |

  @custom_02
  Scenario: Searching from textbox
    Given the user is on the "home" page
    When the user search for "Anthony Fokker"
    Then text "Netherlands" should display somewhere on the page