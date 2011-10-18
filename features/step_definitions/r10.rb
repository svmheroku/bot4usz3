# r10.rb

Then /^I_should_see_lhs_links$/ do
  ndoc = Nokogiri::HTML page.html
  my_links = ndoc.css("a")
  my_links.size.should > 1
  ml_html_a = my_links.map{|ml|ml.inner_html}
  (ml_html_a.include? "About").should == true
  # Check for a few links, not all.
  ["About","Blog","Books","Contact","Forum","FAQ","Glossary"].each{|lnk| (ml_html_a.include? lnk).should == true}
  href_a = my_links.map{|l| l.attributes["href"].value}.sort.uniq
  ["/about", "/blog", "/books", "/contact", "/disclaimer", "/faq"].each{|href| (href_a.include? href).should == true}
end

Given /^good_luck$/ do
  assert true
end


When /^I visit "([^"]*)"$/ do |path|
  visit path
end

Then /^(?:|I )should see "([^"]*)" in a comment$/ do |text|
  assert false unless page.html =~ Regexp.new(Regexp.escape(text))
end

Then /^smtp$/ do
  # smtp is show me the page
  save_and_open_page
  assert true
end

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
