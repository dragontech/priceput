require 'spec_helper'

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