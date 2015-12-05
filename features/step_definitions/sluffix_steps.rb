require "fluffix"

Given(/^i have the name (.*)$/) do |input|
  @input = input
end

When(/^I cleanse it$/) do
  @cleaned = Fluffix::US.cleanse(@input)
end

Then(/^i should have (.*)$/) do |expected|
  @cleaned.should eq(expected)
end