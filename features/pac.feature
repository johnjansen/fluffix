Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario Outline: I have P.A.C's
    Given i have the name <input>
    When I cleanse it
    Then i should have <expected>

    Examples:
      | input | expected |
      | Prototype PA | Prototype |
      | Prototype PC | Prototype |
      | Prototype P.A. | Prototype |
      | Prototype P.A | Prototype |      

      | prototype pa | prototype |
      | prototype pc | prototype |
      | prototype p.a. | prototype |
      | prototype p.a | prototype |      

      | prototype interactive laboratories (dead in '99) pa | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) pc | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) p.a. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) p.a | prototype interactive laboratories (dead in '99) |