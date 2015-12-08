Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario: I have an L3C
    Given I have these names
    | Prototype |
    | Prototype Interactive Laboratories (dead in '99) |
    And I have these suffixes
    | L3C |
    | L.3.C |
    | 13C |
    | 1.3.C |

    And I combine them
    Then the cleansed version should match the name
