require "fluffix"
require "awesome_print"

# generics
Given(/^I have these names$/i) do |names|
  names = names.raw.flatten
  @names = names + names.map(&:downcase)
end

Given(/^I have these suffixes$/i) do |suffixes|
  suffixes = suffixes.raw.flatten
  @suffixes = suffixes + suffixes.map(&:downcase)
  @suffixes = @suffixes + @suffixes.map{ |s| "#{s}." }
end

Given(/^I combine them$/i) do
  @examples = @names.product(@suffixes).map{ |i| [i.join(" "), i.first] }
end

Then(/^The cleansed version should match the name$/i) do
  @examples.each do |example|
    Fluffix::US.cleanse(example.first).should eq(example.last)
  end
end