
class GamePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :game
  validate :unique_gp

  def unique_gp
    game = Game.find(game_id)
    player = Player.find(player_id)
    if game.players.include?(player)
      errors.add(:player_id, "You already joined this game.")
    end
  end

end
