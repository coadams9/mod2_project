class GamesController < ApplicationController
  before_action :authorize, except: [:show, :index]

  def index
    @games = Game.future_games
  end

  def show
    # byebug
    @game = Game.find(params[:id])
    # @player = Player.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    # @game = Game.new(game_params)

    @game = cur_player.games.build(game_params)
    @game.players << cur_player
    if @game.save
      # @game_player = GamePlayer.create(game_id: @game.id, player_id: params[:player_id])
      redirect_to game_path(@game.id)
    else
      render :new
    end
  end

  def has_responded(player)
    x = Invite.find_by invited_id: (player.id)
    x.responded = true
    x.save
  end


  def join_game
    # game = Game.find(params[:id])
    # invite = Invite.find_invite_from_game(game)

    @game_player = GamePlayer.new(player_id: cur_player.id, game_id: params[:id])
    if @game_player.save
      redirect_to game_path(params[:id])
    else
      flash[:error] = "You already joined this game! Please try another game."
      @game = Game.find(params[:id])
      render :show
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
