# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

place1 = Place.create(name: "Mexico City")
place1.entries.create(title: "Ate tacos", description: "I'm just doing me job", posted_on: "2022-01-01")

place2 = Place.create(name: "Beijing")
place2.entries.create(title: "First Visit", description: "Would love to go for the first time", posted_on: "2022-01-01")
