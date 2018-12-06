class Invite < ApplicationRecord
  belongs_to :player
  belongs_to :invited, class_name: "Player"
  belongs_to :game

  def self.has_responded(player)
    x = Invite.find_by invited_id: player.id
    x.responded = true
    x.save
  end

  def self.find_invite_from_game(game)
    Invite.find_by(game_id: game.id)
  end
end
