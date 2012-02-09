Given /^I have a user with "([^"]*)" equals "([^"]*)"$/ do |arg1, arg2|
  @user = User.new(:email => "frank@microsoft.com")
  @user.password = "mypassword"
  @user.password_confirmation = "mypassword"
  
  @user.save!
  
  @supplier = Factory(:supplier, user: @user)
  @address = Factory(:address, addressable: @supplier)
end

Given /^I have no users$/ do
  User.count.blank?
end

Then /^I should have (\d+) user$/s do |arg1|
  User.count == arg1
end

Given /^I see my profile$/ do
  @user = User.new(:email => "frank@microsoft.com")
  @user.password = "mypassword"
  @user.password_confirmation = "mypassword"
  @user.save!
  
  @supplier = Factory(:supplier, user: @user)
  @address = Factory(:address, addressable: @supplier)

  visit "/"
  click_link("#logout") if page.has_selector?('#logout')

  visit new_user_session_path
  fill_in('Email', :with => @user.email)
  fill_in('Password', :with => @user.password)
  click_on('Sign in')
  
  click_link("my profile")
end
