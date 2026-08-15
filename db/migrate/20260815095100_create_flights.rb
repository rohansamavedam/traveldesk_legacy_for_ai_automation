class CreateFlights < ActiveRecord::Migration[8.1]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :origin
      t.string :destination
      t.datetime :departure_at
      t.datetime :arrival_at
      t.integer :fare_cents
      t.string :cabin
      t.integer :seats_available
      t.string :status

      t.timestamps
    end
  end
end
