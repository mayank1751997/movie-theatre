class Theatre < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone_no, uniqueness: true, numericality: { only_integer: true }
  
  has_many :audis
  has_many :bookings
end