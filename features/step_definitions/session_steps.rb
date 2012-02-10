Given /^I am not logged in$/ do
  visit "/"
  click_link("#logout") if page.has_selector?('#logout')
end

Given /^I am signed in as Frank$/ do
  @user_attr = Factory.attributes_for(:user)
    
  @user = User.new(:email => @user_attr[:email])
  @user.password = @user_attr[:password]
  @user.password_confirmation = @user_attr[:password]
  @user.save!
 
  @supplier = Factory(:supplier, :user => @user)
  @address = Factory(:address, addressable: @supplier)
  
  visit new_user_session_path
  fill_in('Email', :with => @user.email)
  fill_in('Password', :with => @user.password)
  click_on('Sign in')
  
end
