class AddUpdatedFareCentsToFlights < ActiveRecord::Migration[8.1]
  def change
    add_column :flights, :updated_fare_cents, :integer
  end
end
