# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address, :aliases => [:mihaiviteazu46] do
      addressable :frankandbeans
      county "Buzau"
      city "Focsani"
      street "Mihai Viteazu"
      number "46"
      block "57"
      apartment "38"
      zip_code "010101"
    end
end