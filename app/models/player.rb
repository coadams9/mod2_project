class Player < ApplicationRecord
  has_many :game_players
  has_many :games, through: :game_players
  has_many :invites
  has_many :inviteds, class_name: "Invite", foreign_key: "invited_id"


  validates :name, presence: true, length: { minimum: 2 }
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { minimum: 2 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :bio, length: { minimum: 20 }

  # def current_games
  #   @player.games.where("time > ?", DateTime.now).each do |game|
  #   <li><%= game.title %></li>
  #   <li><%= game.time %></li>
  #     </br>
  # end

  


end
