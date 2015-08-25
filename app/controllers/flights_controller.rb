class FlightsController < ApplicationController
  def index
  	@airports = Airport.all.pluck(:airport_code)
  	@dates = Flight.get_dates
  	@passengers = [1..4]
  end
end