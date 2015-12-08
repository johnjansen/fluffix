Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario: I have an PLC
    Given I have these names
    | Prototype |
    | Prototype Interactive Laboratories (dead in '99) |
    And I have these suffixes
    | P.L.C |
    | PLC |
    | P.L.L.C |
    | PLLC |
    | L.L.C |
    | LLC |

    And I combine them
    Then the cleansed version should match the name
