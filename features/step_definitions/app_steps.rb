Given /^I am on the root page$/ do
  visit "/"
end

Then /^I should see "([^"]*)"$/ do |content|
  page.should have_content content
end

