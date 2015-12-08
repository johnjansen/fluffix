Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario: I have Coop
    Given I have these names
    | Prototype |
    | Prototype Interactive Laboratories (dead in '99) |
    And I have these suffixes
    | Cooperative |
    | Co-operative |
    | Coop |
    | Co-op |

    And I combine them
    Then the cleansed version should match the name
