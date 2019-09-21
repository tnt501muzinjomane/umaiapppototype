class Shift < ActiveRecord::Base
belongs_to :restaurant
validates_presence_of :restaurant_id
validates_presence_of :start_time
validates_presence_of :end_time
end
