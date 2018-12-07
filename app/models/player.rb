class Player < ApplicationRecord
  has_secure_password
  has_many :game_players
  has_many :games, through: :game_players
  has_many :invites
  has_many :inviteds, class_name: "Invite", foreign_key: "invited_id"


  validates :name, presence: true, length: { minimum: 2 }
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { minimum: 2 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :bio, length: { minimum: 20 }



  def self.cur_invites(player)
    player.inviteds.where("responded = ?", false)
  end

  def self.all_but_me(me)
    Player.all.reject do |player|
      player == me
    end
  end

  def self.my_games(me)
    Game.all.where
  end

  def self.games_im_in(player)
    player.games.where("time > ?", DateTime.now)
  end



end
