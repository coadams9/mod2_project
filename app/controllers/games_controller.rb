class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new

  end

  def create
    @game = Game.new(game_params)
    # @game_player.save
    if @game.save
      @game_player = GamePlayer.create(game_id: @game.id, player_id: params[:player_id])
      redirect_to new_player_game_path(@game)
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  private
  def game_params
    params.require(:game).permit(:location, :time, :title)
  end
end
