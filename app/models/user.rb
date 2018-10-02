class User < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true, numericality: { only_integer: true }
    validates :mobile_no,presence: true, uniqueness: true, numericality: { only_integer: true }
    has_many :bookings

end