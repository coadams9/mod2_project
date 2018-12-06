class Invite < ApplicationRecord
  belongs_to :player
  belongs_to :invited, class_name: "Player"
  belongs_to :game

  def has_responded(player)
    x = Invite.find_by invited_id: (player.id)
    x.responded = true
    x.save
  end

end
