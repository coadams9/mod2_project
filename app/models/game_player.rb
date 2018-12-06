
class GamePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :game
  validates :player_id, uniqueness: {scope: :game_id}

  


  # class Holiday < ApplicationRecord
  #   validates :name, uniqueness: { scope: :year,
  #     message: "should happen once per year" }
  # end
  #
  # def unique_gp
  #   game = Game.find(game_id)
  #   player = Player.find(player_id)
  #   if game.players.include?(player)
  #     errors.add(:game_id, "You already joined this game.")
  #   end
  # end

end
