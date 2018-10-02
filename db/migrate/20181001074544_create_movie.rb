
class CreateMovie < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :catagory
    end
  end
end