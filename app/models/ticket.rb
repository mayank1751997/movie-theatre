class Ticket < ApplicationRecord
    belongs_to :movie
    belongs_to :audi
    belongs_to :booking
end