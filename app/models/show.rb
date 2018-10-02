class Show < ApplicationRecord
    validates :time, presence: true
    validates :movie_id, presence: true, numericality: { only_integer: true }
    validates :audi_id, presence: true, numericality: { only_integer: true }
    validates :seats,presence: true, numericality: { only_integer: true }
    has_many :bookings
    belongs_to :audi
    belongs_to :movie

end