class FlightsController < ApplicationController
  def index
  	@airports = Airport.all.pluck(:airport_code, :id).sort
  	@dates = Flight.get_dates
  	@passengers = 1..4
  	@flights = Flight.search(params)
  end
end