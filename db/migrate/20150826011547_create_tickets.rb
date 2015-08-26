class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :passenger_id
      t.integer :booking_id

      t.timestamps null: false
    end
  end
end
