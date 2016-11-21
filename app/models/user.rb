class User < ApplicationRecord
  has_many :gardens
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true
end
