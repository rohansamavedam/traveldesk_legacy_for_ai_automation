class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
  end

  def review
    @flight = Flight.find(params[:flight_id])

    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
  end

  def confirm
    @flight = Flight.find(params[:flight_id])

    @booking = Booking.create!(
      flight: @flight,
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      quoted_fare_cents: @flight.fare_cents,
      status: "confirmed"
    )
  end
end