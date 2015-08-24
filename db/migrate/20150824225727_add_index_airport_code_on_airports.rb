class AddIndexAirportCodeOnAirports < ActiveRecord::Migration
  def change
  	 add_index :airports, :airport_code, unique: true
  end
end
