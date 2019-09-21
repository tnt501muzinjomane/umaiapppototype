class Rtable < ActiveRecord::Base
belongs_to :restaurant
validates :name, length: { minimum: 5 } # sets a minimum
validates_numericality_of :min_guest, less_than_or_equal_to: 50, greater_than: 0
validates_numericality_of :max_guest, less_than_or_equal_to: 50, greater_than: 0
validates_presence_of :restaurant_id

end
