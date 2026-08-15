Flight.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!("flights")

Flight.create!([
  {
    flight_number: "TD101",
    origin: "JFK",
    destination: "SFO",
    departure_at: DateTime.new(2026, 9, 10, 8, 15),
    arrival_at: DateTime.new(2026, 9, 10, 11, 30),
    fare_cents: 42800,
    cabin: "Economy",
    seats_available: 12,
    status: "available"
  },
  {
    flight_number: "TD202",
    origin: "JFK",
    destination: "SFO",
    departure_at: DateTime.new(2026, 9, 10, 10, 45),
    arrival_at: DateTime.new(2026, 9, 10, 14, 2),
    fare_cents: 45500,
    cabin: "Economy",
    seats_available: 8,
    status: "available"
  },
  {
    flight_number: "TD303",
    origin: "JFK",
    destination: "SFO",
    departure_at: DateTime.new(2026, 9, 10, 12, 20),
    arrival_at: DateTime.new(2026, 9, 10, 15, 40),
    fare_cents: 47200,
    cabin: "Economy",
    seats_available: 5,
    status: "available"
  },
  {
    flight_number: "TD404",
    origin: "JFK",
    destination: "LAX",
    departure_at: DateTime.new(2026, 9, 12, 9, 30),
    arrival_at: DateTime.new(2026, 9, 12, 12, 35),
    fare_cents: 39900,
    cabin: "Economy",
    seats_available: 0,
    status: "sold_out"
  },
  {
    flight_number: "TD777",
    origin: "JFK",
    destination: "ORD",
    departure_at: DateTime.new(2026, 9, 14, 11, 0),
    arrival_at: DateTime.new(2026, 9, 14, 13, 5),
    fare_cents: 32500,
    updated_fare_cents: 35900,
    cabin: "Economy",
    seats_available: 6,
    status: "fare_changed"
  },
  {
    flight_number: "TD503",
    origin: "JFK",
    destination: "MIA",
    departure_at: DateTime.new(2026, 9, 16, 10, 15),
    arrival_at: DateTime.new(2026, 9, 16, 13, 25),
    fare_cents: 28900,
    cabin: "Economy",
    seats_available: 9,
    status: "temporarily_unavailable"
  },
  {
    flight_number: "TD403",
    origin: "JFK",
    destination: "BOS",
    departure_at: DateTime.new(2026, 9, 18, 14, 30),
    arrival_at: DateTime.new(2026, 9, 18, 15, 45),
    fare_cents: 21900,
    cabin: "Economy",
    seats_available: 4,
    status: "permission_denied"
  }
])