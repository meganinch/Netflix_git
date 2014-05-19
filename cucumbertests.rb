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
 
Then /^I see the text$/ do 
	assert page.has_content? 'contact us'
end
 
