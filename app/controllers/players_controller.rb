class PlayersController < ApplicationController



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

  def has_responded(cur_player)
    x = Invite.find_by invited_id: (cur_player.id)
    x.responded = true
    x.save
  end

  def cur_invites
    cur_player.inviteds.where("responded = ?", false)
  end




  private
  def player_params
    params.require(:player).permit(:name, :username, :email, :bio)
  end

end
