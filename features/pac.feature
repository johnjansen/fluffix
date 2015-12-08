Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario: I have P.A.C's
    Given I have these names
    | Prototype |
    | Prototype Interactive Laboratories (dead in '99) |
    And I have these suffixes
    | PA |
    | P.A |
    | PC |
    | P.C |
    And I combine them
    Then the cleansed version should match the name
