Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario: I have Ltd
    Given I have these names
    | Prototype |
    | Prototype Interactive Laboratories (dead in '99) |
    And I have these suffixes
    | Limited |
    | LTD |
    | Limited Liability co |
    | Limited Liability company |

    And I combine them
    Then the cleansed version should match the name
