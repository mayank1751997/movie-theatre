class CreateAudi < ActiveRecord::Migration
  def change
    create_table :audis do |t|
      t.integer :num
      t.integer :no_of_seats
      t.integer :theatre_id
    end
  end
end