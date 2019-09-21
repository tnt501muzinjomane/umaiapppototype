class AddNumberOfPeopleToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :number_of_people, :string
  end
end
