class Supplier < ActiveRecord::Base
  belongs_to :user
  has_many :addresses, as: :addressable
  
  validate :phone_required
  validates :first_name, :last_name, presence: true
  
  def phone_required
    errors[:base] << "At least one phone number has to be present" if phone.blank? && mobile.blank?
  end
end
