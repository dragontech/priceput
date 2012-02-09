require 'spec_helper'

describe AddressesController do

  before (:each) do
    @user_attr = Factory.attributes_for(:user)
    
    @user = User.new(:email => @user_attr[:email])
    @user.password = @user_attr[:password]
    @user.password_confirmation = @user_attr[:password]
    @user.save!
    
    @supplier = Factory(:supplier, user: @user)
    @address = Factory(:address, addressable: @supplier)
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AddressesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all addresses as @addresses" do
      get :index, {}, valid_session
      assigns(:addresses).should eq([@address])
    end
  end

end
