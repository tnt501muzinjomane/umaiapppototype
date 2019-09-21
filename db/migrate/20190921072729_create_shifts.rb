class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :start_time
      t.string :end_time
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
