class ChangeForeignKeyNamesInFlight < ActiveRecord::Migration
  def change
  	rename_column :flights, :arrival_airport_id, :to_airport_id
  	rename_column :flights, :departure_airport_id, :from_airport_id
  end
end
