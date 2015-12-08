require "fluffix"
require "awesome_print"

# generics
Given(/^I have these names$/i) do |names|
  @names = names.raw
end

Given(/^I have these suffixes$/i) do |suffixes|
  @suffixes =  suffixes.raw
end

Given(/^I combine them$/i) do
  @examples = @names.product(@suffixes).map{ |i| [i.join(" "), i.first.first] }
end

Then(/^The cleansed version should match the name$/i) do
  @examples.each do |example|
    Fluffix::US.cleanse(example.first).should eq(example.last)
  end
end