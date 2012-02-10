Given /^I have Frank as a user$/ do
  @user_attr = Factory.attributes_for(:user)

  @user = User.new(:email => @user_attr[:email])
  @user.password = @user_attr[:password]
  @user.password_confirmation = @user_attr[:password]
  
  @user.save!
  
  @supplier = Factory(:supplier, user: @user)
  @address = Factory(:address, addressable: @supplier)
end

Given /^I have no users$/ do
  User.count.blank?
end

Then /^I should have (\d+) user$/s do |number_of_users|
  User.count == number_of_users
end

Given /^I see my profile$/ do
  @user_attr = Factory.attributes_for(:user)
  
  @user = User.new(:email => @user_attr[:email])
  @user.password = @user_attr[:password]
  @user.password_confirmation = @user_attr[:password]
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
