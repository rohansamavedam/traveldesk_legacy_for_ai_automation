class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])

    if @flight.status == "sold_out" || @flight.seats_available <= 0
      redirect_to root_path, alert: "FLIGHT UNAVAILABLE: The selected flight is sold out."
      return
    end

    if @flight.status == "temporarily_unavailable" && params[:retry] != "true"
      render :temporary_error
      return
    end
  end

  def review
    @flight = Flight.find(params[:flight_id])

    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]

    @fare_changed = @flight.status == "fare_changed"
  end

  def confirm
    @flight = Flight.find(params[:flight_id])

    @booking = Booking.create!(
      flight: @flight,
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      quoted_fare_cents: @flight.updated_fare_cents || @flight.fare_cents,
      status: "confirmed"
    )
  end
end