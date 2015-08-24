# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Airport.create!(airport_code: "SFO")
Airport.create!(airport_code: "LAX")
Airport.create!(airport_code: "NYC")
Airport.create!(airport_code: "MCO")