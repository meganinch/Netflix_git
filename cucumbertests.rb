Given /^I am in "([^\"]*)"$/ do |directory|
@basedir = directory
end

And /^the file "([^\"]*)" exists$/ do |filename|
File.exists?(File.join(@basedir, filename)).should be_true
end

Then /^I can see a map$/ do
assert page.has_content? 'map_canvas'
end


