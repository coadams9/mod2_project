class Game < ApplicationRecord
  has_many :game_players
  has_many :players, through: :game_players
  validates :location, presence: true
  validates :time, presence: true

end
