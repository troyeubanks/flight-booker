class Passenger < ActiveRecord::Base
	validates :name, presence: true
	has_many :tickets
	has_many :bookings, through: :tickets
	has_many :flights, through: :bookings
end
