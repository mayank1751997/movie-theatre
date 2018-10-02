class CreateShow < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :time
      t.integer :seats
      t.integer :movie_id
    end
  end
end