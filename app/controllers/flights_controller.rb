class FlightsController < ApplicationController
  def index
  	@airports = Airport.all.pluck(:airport_code)
  	@dates = Flight.get_dates
  end
end
