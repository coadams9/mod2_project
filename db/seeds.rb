# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


rucker_park = Game.create(title: "Rucker", location: "Rucker Park", time: "7:00pm")
bunker = Game.create(title: "Bunker", location: "5th St W", time: "8:00pm")
ymca = Game.create(title: "YMCA", location: "YMCA", time: "7:00pm")
college_park = Game.create(title: "Bring it", location: "College Park", time: "6:00pm")
run_n_shoot = Game.create(title: "Game time", location: "Run n Shoot", time: "7:00pm")
