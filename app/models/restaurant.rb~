class Restaurant < ActiveRecord::Base
 has_many :rtables
  has_many :shifts
   has_many :reservations

 validates :name, length: { minimum: 5 } # sets a minimum
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :phone, length: { in: 5..16 } # provide a range
end
