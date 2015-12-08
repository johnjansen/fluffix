require "yaml"
require "awesome_print"

module Fluffix
  
  RULES = [
    "(a )?(pro\.?(fessional)?|chartered|service|svc\.?|(non ?|not for )profit)? ?corp(oration)?",
    "p\.?(a|c)",
    "s\.?c",
    "inc(orporated)?",
    "bank(ing|ers)?",
    "((and|&|\\+|trust) )?co(mpany)?",
    "(limited|ltd)( liability (co(mpany)?)?)?",
    "deposit",
    "credit union",
    "societa per azioni",
    "s\.?p\.?a",
    "(pro\.?(fessional)? )?assoc(iation)?",
    "club",
    "foundation",
    "fund",
    "institute",
    "society",
    "union",
    "syndicate",
    "church",
    "college",
    "university",
    "chartered",
    "(p|l)?\.?(l\.?){0,2}c",
    "(l|1)\.?3\.?c",
    "league",
    "committee",
    "co\-?op(erative)?"
  ].sort{ |a, b| b.size <=> a.size }.map{ |r| Regexp::new(" #{r}\.?$", Regexp::IGNORECASE) }
  
  class US
    def self.cleanse(text)
      raise("Must quack like a string") unless text.respond_to?(:to_s)
      RULES.each do |rule|
        # should return the text in the original form and should handle / ignore punctuation
        if text =~ rule
          result = text.sub(rule, '')
          return result
        end
      end
      return text
    end
  end
end