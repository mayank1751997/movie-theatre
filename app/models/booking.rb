class Booking < ApplicationRecord
    
    has_many :tickets
    belongs_to :theatre
    belongs_to :show

    validates :seat_limit, presence: true, numericality: { only_integer: true }
    
    after_create :seats_left

    private
        def seats_left
            @show.seats = @show.seats - self.seats
        end
        def seat_limit
            if seats <= @shows.seats do
                errors.add(:seats, “booking exceeds no. of available seats”)
            end
        end
end