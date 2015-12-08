# https://en.wikipedia.org/wiki/Types_of_business_entity

# pull the data, and through a series of techniques, tip out the likely business suffixes
require "nokogiri"
require "open-uri"
require "awesome_print"
require "yaml"

task :basic_get do
  html = open("https://en.wikipedia.org/wiki/Types_of_business_entity")
  dom = Nokogiri::HTML.parse(html)

  out_data = []
  dom.css("ul li").each do |tag|
    parts = tag.text.split("≈")
    if parts.length > 1
      p2 = parts.inject([]) do |r, i|
        i.split(/[\n]/).each do |j|
          j.strip!
          j.downcase!
          j.sub!(/\(\s?i.e.\s[^\)]+\)/, "")
          if j.end_with?(":")
            j.gsub!(/\(([^\)]+)\)/, '~~~\1')
            j = j.split("~~~").map{ |item| item.sub(/[\s\:]+$/, '') }
            r << j
          end
        end
        r
      end
      out_data << p2
    end
  end

  File.open("entity_types.yml", "w") do |f|
    f.write(out_data.to_yaml)
  end
end

task :TLD do 
  # https://github.com/alexrabarts/tld
  # get a list of all TLD's if that one wont work
end

task :open_company_data do
  # http://index.okfn.org/dataset/companies/
  # http://download.companieshouse.gov.uk/en_output.html
  # pull a whole bunch of data in the hopes that it gives us clues about this

  # GET http://download.companieshouse.gov.uk/BasicCompanyData-2015-12-01-part1_5.zip

  # unzip it

  # 
  require "csv"
  output = Hash.new(0)
  CSV.foreach("/Users/johnjansen/Downloads/BasicCompanyData-2015-12-01-part1_5.csv", headers:true) do |row|
    parts = row["CompanyName"].split(" ").map(&:strip)
    while not parts.empty?
      output[parts.join(" ")] += 1
      parts.shift
    end
  end
  ap output.map{ |(a, b)| [a, b * b] }.sort{ |a,b| b[1] <=> a[1] }[0..100]
end

task :edgar do
  # https://www.sec.gov/edgar/searchedgar/ftpusers.htm
  # pull all of edgar and figure out the highest frequency suffixes
  # i.e. for "something incorporated"
  # 1) reverse it => "incorporated something"
  # 2) split it => ["incorporated", "something"]
  # 3) ngram it from longest to shortest =>
  #     ["incorporated", "something"]
  #     ["incorporated"]
  # 4) go through the entire db and count instances of ngrams =>
  #     ["incorporated", "something"] => 1
  #     ["incorporated"] => 1
  # 5) suqare the frequencies and trim the long tail
  # 6) manually clean the result
end

task :dump do
  File.open("entity_types_edited.yml", "r") do |f|
    ap YAML.load(f)[0].flatten.uniq.map(&:downcase).sort{ |a, b| b.size <=> a.size }
  end
end