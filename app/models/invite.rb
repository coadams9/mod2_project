class Invite < ApplicationRecord
  belongs_to :player
  belongs_to :invited, class_name: "Player"
  belongs_to :game
  validates :invited_id, uniqueness: {scope: :game_id}


  def self.find_invite_from_game(game)
    Invite.find_by(game_id: game.id)
  end
end
