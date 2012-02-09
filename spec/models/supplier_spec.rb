require 'spec_helper'

describe Supplier do

  before (:each) do
    @user_attr = Factory.attributes_for(:user)
    
    @user = User.new(:email => @user_attr[:email])
    @user.password = @user_attr[:password]
    @user.password_confirmation = @user_attr[:password]
    @user.save!
  end
  
  it "should validate" do
    supplier = Factory.build(:supplier, user: @user)
    supplier.should be_valid
  end
  
  it "should not be valid if mobile and phone not present" do
    supplier = Factory.build(:supplier, user: @user, mobile: "", phone: "")
    supplier.should_not be_valid
  end
  
  it "should be valid if mobile is present and phone not present" do
    supplier = Factory.build(:supplier, user: @user, phone: "")
    supplier.should be_valid
  end
  
  it "should be valid if mobile is not present and phone is present" do
    supplier = Factory.build(:supplier, user: @user, mobile: "")
    supplier.should be_valid
  end
  
  it "should not be valid if first_name is missing" do
    supplier = Factory.build(:supplier, user: @user, first_name: "")
    supplier.should_not be_valid
  end
  
  it "should not be valid if last_name is missing" do
    supplier = Factory.build(:supplier, user: @user, last_name: "")
    supplier.should_not be_valid
  end
  
  it "should verify the save" do
    supplier = Factory(:supplier, user: @user)
    supplier.first_name = "Chuck"
    supplier.last_name = "Testa"
    supplier.save!
    
    supplier.should be_valid
    
    supplier.first_name.should == "Chuck"
    supplier.last_name.should == "Testa"
  end
  
end
