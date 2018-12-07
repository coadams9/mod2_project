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


jerry = Player.create(name: "Jerry", email: "jerry@hotmail.com", username: "jerry", bio: "all-star", password: "Jfive", password_confirmation: "Jfive")
terry = Player.create(name: "Terry", email: "terry@hotmail.com", username: "terry", bio: "all-star", password: "Jfive", password_confirmation: "Jfive")
lerry = Player.create(name: "Lerry", email: "lerry@hotmail.com", username: "lerry", bio: "all-star", password: "Jfive", password_confirmation: "Jfive")
kerry = Player.create(name: "Kerry", email: "kerry@hotmail.com", username: "kerry", bio: "all-star", password: "Jfive", password_confirmation: "Jfive")
herry = Player.create(name: "Herry", email: "herry@hotmail.com", username: "herry", bio: "all-star", password: "Jfive", password_confirmation: "Jfive")

jerry_game = GamePlayer.create(player_id: 1, game_id: 1)
terry_game = GamePlayer.create(player_id: 2, game_id: 1)
lerry_game = GamePlayer.create(player_id: 3, game_id: 1)
kerry_game = GamePlayer.create(player_id: 4, game_id: 1)
herry_game = GamePlayer.create(player_id: 5, game_id: 1)
