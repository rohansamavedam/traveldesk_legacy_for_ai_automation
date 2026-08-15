Flight.destroy_all

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
  }
])