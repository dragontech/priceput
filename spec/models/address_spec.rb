require 'spec_helper'

describe Address do
  
  before (:each) do
    @user_attr = Factory.attributes_for(:user)
    
    @user = User.new(:email => @user_attr[:email])
    @user.password = @user_attr[:password]
    @user.password_confirmation = @user_attr[:password]
    @user.save!
    
    @supplier = Factory(:frankandbeans, user: @user)
  end

  it "should validate" do
    address = Factory.build(:address, addressable: @supplier)
    address.should be_valid
  end

  it "should not validate if county is missing" do
    address = Factory.build(:address, addressable: @supplier)
    address.county = ""
    address.should_not be_valid
  end

  it "should not validate if city is missing" do
    address = Factory.build(:address, addressable: @supplier)
    address.city = ""
    address.should_not be_valid
  end

  it "should not validate if street is missing" do
    address = Factory.build(:address, addressable: @supplier)
    address.street = ""
    address.should_not be_valid
  end

  it "should not validate if county is missing" do
    address = Factory.build(:address, addressable: @supplier)
    address.number = ""
    address.should_not be_valid
  end

end
