# r10.rb

Given /^I am on the homepage$/ do
  visit '/'
end

Then /^I should see "([^"]*)"$/ do |arg1|
  assert false unless page.html =~ Regexp.new(Regexp.escape(arg1))
end

Then /^debug$/ do
  debugger
  p 'debugging now'
end
