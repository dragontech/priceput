class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true
  
  validates :county, :city, :street, :number, presence: true
  validate :check_county

  def check_county
    errors[:base] << "This is not a Romanian county" unless COUNTIES.include?(county)
  end
end
