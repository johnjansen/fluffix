Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario: I have P.A.C's
    Given I have these names
    | Prototype |
    | Prototype Interactive Laboratories (dead in '99) |
    | prototype |
    | prototype interactive laboratories (dead in '99) |
    And I have these suffixes
    | PA |
    | P.A. |
    | P.A |
    | PC |
    | P.C. |
    | P.C |
    | pa |
    | p.a. |
    | p.a |
    | pc |
    | p.c. |
    | p.c |
    And I combine them
    Then the cleansed version should match the name
