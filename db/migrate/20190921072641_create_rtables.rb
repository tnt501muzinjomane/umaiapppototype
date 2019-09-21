class CreateRtables < ActiveRecord::Migration
  def change
    create_table :rtables do |t|
      t.string :name
      t.string :min_guest
      t.string :max_guest
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
