class Audi < ApplicationRecord
  validates :num ,presence: true, numericality: { only_integer: true }
  validates :no_of_seats, presence: true, numericality: { only_integer: true }
  validates :theatre_id, presence: true, numericality: { only_integer: true }
  belongs_to :theatre
  has_many :shows
  has_many :movies, through: :shows
end