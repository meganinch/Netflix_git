Given /^I am in "([^\"]*)"$/ do |directory|
@basedir = directory
end

And /^the file "([^\"]*)" exists$/ do |filename|
File.exists?(File.join(@basedir, filename)).should be_true
end

And /^I visit the "([^\"]*)" page$/ do |urlname|
	visit urlname
end
