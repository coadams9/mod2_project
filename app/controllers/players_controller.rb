class PlayersController < ApplicationController

  def new_game 
    @player = Player.find(params[:id])
    @game = Game.new
    render :games/new
  end

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to player_path(@player)
    else
      render :edit
    end
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to player_path(@player)
    else
      render :new
    end
  end


  private
  def player_params
    params.require(:player).permit(:name, :username, :email, :bio)
  end

end
