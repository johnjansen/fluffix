Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario Outline: I have corporation names
    Given i have the name <input>
    When I cleanse it
    Then i should have <expected>

    Examples:
      | input | expected |

      # upper case
      | Prototype Corporation | Prototype |
      | Prototype corporation | Prototype |
      | Prototype Corp | Prototype |
      | Prototype corp | Prototype |
      | Prototype Corp. | Prototype |
      | Prototype corp. | Prototype |
      | Prototype interactive laboratories (dead in '99) Corporation | Prototype interactive laboratories (dead in '99) |

      # lowercase
      | prototype corporation | prototype |
      | prototype corporation | prototype |
      | prototype corp | prototype |
      | prototype corp | prototype |
      | prototype corp. | prototype |
      | prototype corp. | prototype |
      | prototype interactive laboratories (dead in '99) corporation | prototype interactive laboratories (dead in '99) |