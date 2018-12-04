class Player < ApplicationRecord
  has_many :game_players
  has_many :games, through: :game_players
  validates :name, presence: true, length: { minimum: 2 }
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { minimum: 2 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :bio, length: { minimum: 20 }
end
