class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :guest_id
      t.integer :restaurant_id
      t.integer :table_id
      t.integer :shift_id
      t.string :reservation_date
      t.string :reservation_time

      t.timestamps null: false
    end
  end
end
