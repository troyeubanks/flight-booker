class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :arrival_airport_id
      t.integer :departure_airport_id
      t.datetime :depart_at
      t.integer :duration

      t.timestamps null: false
    end
  end
end
