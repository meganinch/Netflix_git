Given /^I am in "([^\"]*)"$/ do |directory|
@basedir = directory
end

And /^the file "([^\"]*)" exists$/ do |filename|
File.exists?(File.join(@basedir, filename)).should be_true
end

When /^I visit the "([^\"]*)" page$/ do |urlname|
	visit "/"
end

Then /^I can see the map$/ do
  page.should have_content 'map'
 end
 
Then /^I should see "([^\"]*)"$/ do |text|
  page.should have_content text
end
 
