Rails.application.routes.draw do
  root "flight_search#index"

  get "/flights/results", to: "flight_search#results"
end