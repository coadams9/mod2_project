class Invite < ApplicationRecord
  belongs_to :player
  belongs_to :invited, class_name: "Player"
  belongs_to :game


  def self.find_invite_from_game(game)
    Invite.find_by(game_id: game.id)
  end
end
