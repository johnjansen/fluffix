Feature: cleanse a company name of suffix
  In order to have clean company names that we could compare

  Scenario Outline: I have corporation names
    Given i have the name <input>
    When I cleanse it
    Then i should have <expected>

    Examples:
      | input | expected |

      # upper case
      | Prototype a Corp | Prototype |
      | Prototype a corp | Prototype |
      | Prototype A Corp | Prototype |
      | Prototype A corp | Prototype |
      | Prototype a professional Corp | Prototype |
      | Prototype a professional corp | Prototype |
      | Prototype a pro corp | Prototype |
      | Prototype a pro. corp | Prototype |
      | Prototype a pro. corporation | Prototype |
      | Prototype a chartered corp | Prototype |
      | Prototype a chartered corp. | Prototype |
      | Prototype a chartered corporation | Prototype |
      | Prototype a service corp | Prototype |
      | Prototype a service corp. | Prototype |
      | Prototype a service corporation | Prototype |
      | Prototype a svc corp | Prototype |
      | Prototype a svc corp. | Prototype |
      | Prototype a svc corporation | Prototype |
      | Prototype a nonprofit corp | Prototype |
      | Prototype a non profit corp | Prototype |
      | Prototype a not for profit corp | Prototype |
      | Prototype a nonprofit corp. | Prototype |
      | Prototype a non profit corp. | Prototype |
      | Prototype a not for profit corp. | Prototype |
      | Prototype a nonprofit corporation | Prototype |
      | Prototype a non profit corporation | Prototype |
      | Prototype a not for profit corporation | Prototype |
      | Prototype professional Corp | Prototype |
      | Prototype professional corp | Prototype |
      | Prototype pro corp | Prototype |
      | Prototype pro. corp | Prototype |
      | Prototype pro. corporation | Prototype |
      | Prototype chartered corp | Prototype |
      | Prototype chartered corp. | Prototype |
      | Prototype chartered corporation | Prototype |
      | Prototype service corp | Prototype |
      | Prototype service corp. | Prototype |
      | Prototype service corporation | Prototype |
      | Prototype svc corp | Prototype |
      | Prototype svc corp. | Prototype |
      | Prototype svc corporation | Prototype |
      | Prototype nonprofit corp | Prototype |
      | Prototype non profit corp | Prototype |
      | Prototype not for profit corp | Prototype |
      | Prototype nonprofit corp. | Prototype |
      | Prototype non profit corp. | Prototype |
      | Prototype not for profit corp. | Prototype |
      | Prototype nonprofit corporation | Prototype |
      | Prototype non profit corporation | Prototype |
      | Prototype not for profit corporation | Prototype |

      # lower case
      | prototype Corporation | prototype |
      | prototype corporation | prototype |
      | prototype Corp | prototype |
      | prototype corp | prototype |
      | prototype a Corp | prototype |
      | prototype a corp | prototype |
      | prototype A Corp | prototype |
      | prototype A corp | prototype |
      | prototype a professional Corp | prototype |
      | prototype a professional corp | prototype |
      | prototype a pro corp | prototype |
      | prototype a pro. corp | prototype |
      | prototype a pro. corporation | prototype |
      | prototype a chartered corp | prototype |
      | prototype a chartered corp. | prototype |
      | prototype a chartered corporation | prototype |
      | prototype a service corp | prototype |
      | prototype a service corp. | prototype |
      | prototype a service corporation | prototype |
      | prototype a svc corp | prototype |
      | prototype a svc corp. | prototype |
      | prototype a svc corporation | prototype |
      | prototype a nonprofit corp | prototype |
      | prototype a non profit corp | prototype |
      | prototype a not for profit corp | prototype |
      | prototype a nonprofit corp. | prototype |
      | prototype a non profit corp. | prototype |
      | prototype a not for profit corp. | prototype |
      | prototype a nonprofit corporation | prototype |
      | prototype a non profit corporation | prototype |
      | prototype a not for profit corporation | prototype |
      | prototype professional Corp | prototype |
      | prototype professional corp | prototype |
      | prototype pro corp | prototype |
      | prototype pro. corp | prototype |
      | prototype pro. corporation | prototype |
      | prototype chartered corp | prototype |
      | prototype chartered corp. | prototype |
      | prototype chartered corporation | prototype |
      | prototype service corp | prototype |
      | prototype service corp. | prototype |
      | prototype service corporation | prototype |
      | prototype svc corp | prototype |
      | prototype svc corp. | prototype |
      | prototype svc corporation | prototype |
      | prototype nonprofit corp | prototype |
      | prototype non profit corp | prototype |
      | prototype not for profit corp | prototype |
      | prototype nonprofit corp. | prototype |
      | prototype non profit corp. | prototype |
      | prototype not for profit corp. | prototype |
      | prototype nonprofit corporation | prototype |
      | prototype non profit corporation | prototype |
      | prototype not for profit corporation | prototype |

      # multi word
      | prototype interactive laboratories (dead in '99) Corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) Corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a Corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) A Corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) A corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a professional Corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a professional corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a pro corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a pro. corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a pro. corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a chartered corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a chartered corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a chartered corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a service corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a service corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a service corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a svc corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a svc corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a svc corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a nonprofit corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a non profit corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a not for profit corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a nonprofit corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a non profit corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a not for profit corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a nonprofit corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a non profit corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) a not for profit corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) professional Corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) professional corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) pro corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) pro. corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) pro. corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) chartered corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) chartered corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) chartered corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) service corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) service corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) service corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) svc corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) svc corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) svc corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) nonprofit corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) non profit corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) not for profit corp | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) nonprofit corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) non profit corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) not for profit corp. | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) nonprofit corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) non profit corporation | prototype interactive laboratories (dead in '99) |
      | prototype interactive laboratories (dead in '99) not for profit corporation | prototype interactive laboratories (dead in '99) |
