class Garden < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, allow_blank: false
  validates :size, presence: true, allow_blank: false, numericality: { only_integer: true }
  validates :description, presence: true, allow_blank: false, length: { minimum: 20 } 
  validates :location, presence: true, allow_blank: false
  validates :spot_number, presence: true, allow_blank: false, numericality: { only_integer: true }
  validates :price, presence: true, allow_blank: false, numericality: { only_integer: true }

end
