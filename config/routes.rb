Rails.application.routes.draw do
  root "flight_search#index"

  get "/flights/results", to: "flight_search#results"

  get "/bookings/new", to: "bookings#new"
  post "/bookings/review", to: "bookings#review"
  post "/bookings/confirm", to: "bookings#confirm"
end