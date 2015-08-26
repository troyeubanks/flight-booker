class Flight < ActiveRecord::Base
	validates :from_airport, presence: true
	validates :to_airport,   presence: true
	validates :depart_at,    presence: true
	validates :duration, 		 presence: true

	belongs_to :from_airport, class_name: "Airport"
	belongs_to :to_airport, class_name: "Airport"

	def self.get_dates
		order('depart_at asc').pluck(:depart_at)
					.map { |d| [ d.strftime("%m/%d/%Y"), d.to_date ] }.uniq
	end

	def date_formatted
		depart_at.strftime("%m/%d/%Y")
	end

	def self.search(params)
		if params[:search] && !params[:date].blank?
			date = params[:date].to_date
			Flight.where(to_airport_id: params[:to], from_airport_id: params[:from],
  							 	 depart_at: date.beginning_of_day..date.end_of_day)
									 .includes(:from_airport, :to_airport)
    else
    	Flight.none
    end
	end
end
