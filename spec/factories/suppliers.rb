FactoryGirl.define do
  factory :supplier, :aliases => [:frankandbeans] do
    first_name "Frank"
    last_name "Beans"
    phone "0123455789"
    mobile "0123455789"
    fax "0123455789"
    cnp "1234567234567"
    site "http://frankandbeans.com"
    user :frank
  end
end