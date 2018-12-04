class GamePlayersController < ApplicationController
  def new
    @player = Player.find(params[:id])
    @game = Game.new
    @game_players = GamePlayer.new
  end

end
