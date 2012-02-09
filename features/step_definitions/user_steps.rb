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
