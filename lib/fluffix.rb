require "yaml"
require "awesome_print"

module Fluffix
  
  RULES = YAML.load(File.open("entity_types_edited.yml"))[0].flatten.uniq.sort{ |a, b| b.size <=> a.size }.map{ |r| Regexp::new(" #{r}\.?$", Regexp::IGNORECASE) }
  
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