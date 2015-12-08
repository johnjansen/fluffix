Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario: I have Corporations
    Given I have these names
    | Prototype |
    | Prototype Interactive Laboratories (dead in '99) |
    | prototype |
    | prototype interactive laboratories (dead in '99) |
    And I have these suffixes
    | Corporation |
    | corporation |
    | Corporation. |
    | corporation. |
    | Corp |
    | corp |
    | Corp. |
    | corp. |
    | a Corp |
    | a corp |
    | A Corp |
    | A corp |
    | a professional Corp |
    | a professional corp |
    | a pro corp |
    | a pro. corp |
    | a pro. corporation |
    | a chartered corp |
    | a chartered corp. |
    | a chartered corporation |
    | a service corp |
    | a service corp. |
    | a service corporation |
    | a svc corp |
    | a svc corp. |
    | a svc corporation |
    | a nonprofit corp |
    | a non profit corp |
    | a not for profit corp |
    | a nonprofit corp. |
    | a non profit corp. |
    | a not for profit corp. |
    | a nonprofit corporation |
    | a non profit corporation |
    | a not for profit corporation |
    | professional Corp |
    | professional corp |
    | pro corp |
    | pro. corp |
    | pro. corporation |
    | chartered corp |
    | chartered corp. |
    | chartered corporation |
    | service corp |
    | service corp. |
    | service corporation |
    | svc corp |
    | svc corp. |
    | svc corporation |
    | nonprofit corp |
    | non profit corp |
    | not for profit corp |
    | nonprofit corp. |
    | non profit corp. |
    | not for profit corp. |
    | nonprofit corporation |
    | non profit corporation |
    | not for profit corporation |

    And I combine them
    Then the cleansed version should match the name
