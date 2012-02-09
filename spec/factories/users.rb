FactoryGirl.define do

  factory :user, :aliases => [:frank] do
    sequence(:email) { |n| "frank#{n}@microsoft.com" }
    password "mypassword"
  end
  
end
