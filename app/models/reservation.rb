class Reservation < ActiveRecord::Base
belongs_to :restaurant

validates_presence_of :restaurant_id
validates_presence_of :table_id
validates_presence_of :shift_id
validates_presence_of :reservation_date
validates_presence_of :reservation_time
validates_presence_of :number_of_people
end
