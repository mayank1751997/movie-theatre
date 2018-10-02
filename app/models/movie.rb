class Movie < ApplicationRecord
    validates :name, presence: true
    validates :catagory, presence: true, inclusion: { in: %w(U UA A),
        message: "%{value} is no valid Catagory" }
    has_many :shows
    has_many :tickets
    
end