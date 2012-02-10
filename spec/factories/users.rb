FactoryGirl.define do

  factory :user, :aliases => [:frank] do
    email "frank@microsoft.com"
    password "mypassword"
  end
  
end
