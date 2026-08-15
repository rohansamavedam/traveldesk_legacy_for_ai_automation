class FlightSearchController < ApplicationController
  def index
  end

  def results
    departure_date = Date.parse(params[:departure_date])

    @flights = Flight.where(
      origin: params[:origin].upcase,
      destination: params[:destination].upcase,
      cabin: params[:cabin]
    ).where(
      departure_at: departure_date.beginning_of_day..departure_date.end_of_day
    )
  end
end