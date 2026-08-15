class CreateBookings < ActiveRecord::Migration[8.1]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :quoted_fare_cents
      t.string :status

      t.timestamps
    end
  end
end
