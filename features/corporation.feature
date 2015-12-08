Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario: I have Corporations
    Given I have these names
    | Prototype |
    | Prototype Interactive Laboratories (dead in '99) |
    And I have these suffixes
    | Corporation |
    | Corp |
    | A Corp |
    | A Professional Corp |
    | A Pro Corp |
    | A Pro. Corp |
    | A Pro. Corporation |
    | A Chartered Corp |
    | A Chartered Corporation |
    | A Service Corp |
    | A Service Corporation |
    | A Svc Corp |
    | A Svc. Corp |
    | A Svc Corporation |
    | A Svc. Corporation |
    | A Nonprofit Corp |
    | A Non Profit Corp |
    | A Not for Profit Corp |
    | Professional Corp |
    | Pro Corp |
    | Pro. Corp |
    | Pro. Corporation |
    | Chartered Corp |
    | Chartered Corporation |
    | Service Corp |
    | Service Corporation |
    | Svc Corp |
    | Svc. Corp |
    | Svc Corporation |
    | Svc. Corporation |
    | Nonprofit Corp |
    | Non Profit Corp |
    | Not for Profit Corp |
    | Nonprofit Corporation |
    | Non Profit Corporation |
    | Not for Profit Corporation |

    And I combine them
    Then the cleansed version should match the name
