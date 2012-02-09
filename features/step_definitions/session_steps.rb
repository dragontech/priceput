Given /^I am not logged in$/ do
  visit "/"
  click_link("#logout") if page.has_selector?('#logout')
end

Given /^I am signed in as "([^"]*)"$/ do |arg1|
  @user = User.new(:email => arg1)
  @user.password = "mypassword"
  @user.password_confirmation = "mypassword"
  @user.save!
  
  @supplier = Factory(:supplier, :user => @user)
  
  visit new_user_session_path
  fill_in('Email', :with => arg1)
  fill_in('Password', :with => 'mypassword')
  click_on('Sign in')
  
end
