require 'spec_helper'

describe "User creation" do 
  before (:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @user_attr = Factory.attributes_for(:user)
  end
  
  it "successfully signed up" do
    user = User.new(:email => @user_attr[:email])
    user.password = @user_attr[:password]
    user.password_confirmation = @user_attr[:password]
    user.save
    
    user.should be_valid
  end  

  it "signed up without specifying the email" do
    user = User.new(:email => "")
    user.password = @user_attr[:password]
    user.password_confirmation = @user_attr[:password]
    user.save
    
    user.should have(1).error_on(:email)
    user.errors_on(:email).should == ["can't be blank"]
  end  

  it "signed up without specifying the password" do
    user = User.new(:email => @user_attr[:email])
    user.password = ""
    user.password_confirmation = ""
    user.save
    
    user.should have(1).error_on(:password)
    user.errors_on(:password).should == ["can't be blank"]
  end  

  it "signed up passwords dont match" do
    user = User.new(:email => @user_attr[:email])
    user.password = @user_attr[:password]
    user.password_confirmation = "something else"
    user.save
    
    user.should have(1).error_on(:password)
    user.errors_on(:password).should == ["doesn't match confirmation"]
  end  
end


describe "User" do 
  before (:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @user_attr = Factory.attributes_for(:user)

    @user = User.new(:email => @user_attr[:email])
    @user.password = @user_attr[:password]
    @user.password_confirmation = @user_attr[:password]
    @user.save!
  end

  it "should sign in" do
    sign_in @user
    session['warden.user.user.key'].should_not be_blank
  end

  it "should sign out" do
    sign_in @user
    session['warden.user.user.key'].should_not be_blank
    sign_out @user
    session['warden.user.user.key'].should be_blank    
  end
end