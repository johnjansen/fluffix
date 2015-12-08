Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario Outline: I have S.C's
    Given i have the name <input>
    When I cleanse it
    Then i should have <expected>

    Examples:
      | input | expected |
      | Prototype SC | Prototype |
      | Prototype S.C. | Prototype |
      | Prototype S.C | Prototype |      

      | prototype sc | prototype |
      | prototype s.c. | prototype |
      | prototype s.c | prototype |      

      | prototype interactive laboratories (dead in '99) sc | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) s.c. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) s.c | prototype interactive laboratories (dead in '99) |

      | Prototype interactive laboratories (dead in '99) SC | Prototype interactive laboratories (dead in '99) |
      | Prototype interactive laboratories (dead in '99) S.C. | Prototype interactive laboratories (dead in '99) |
      | Prototype interactive laboratories (dead in '99) S.C | Prototype interactive laboratories (dead in '99) |      