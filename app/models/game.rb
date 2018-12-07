class Game < ApplicationRecord
  has_many :game_players
  has_many :players, through: :game_players
  has_many :invites
  validates :location, presence: true
  validates :time, presence: true
  validates :title, presence: true

  def self.find_game_from_invite(invite)
    Game.find(invite.game_id)
  end

  def self.future_games
    Game.all.where("time > ?", DateTime.now)
  end



end
