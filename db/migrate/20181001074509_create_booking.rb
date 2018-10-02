class CreateBooking < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :no_of_seats
    end
  end
end