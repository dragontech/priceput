class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true
  
  validates :county, :city, :street, :number, presence: true
  
end
