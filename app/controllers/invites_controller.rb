class InvitesController < ApplicationController
  def new
    @invite = Invite.new
  end

  def create
    @invite = Invite.new(player_id: cur_player.id, game_id: params[:invite][:game_id], responded: false, invited_id: params[:invite][:invited_id])
    if @invite.save
      redirect_to player_path(cur_player.id)
      flash[:notice] = "Your invite has been sent!"
    else
      flash[:notice] = "You already invited this player :)"
      render :new
    end
  end

  def rsvp
    @invite = Invite.find(params[:id])
    @invite.responded = true
    @invite.save
    if params[:choice] == "accept"
      @game_player = GamePlayer.new(player_id: cur_player.id, game_id: @invite.game_id)
      if @game_player.save
        flash[:notice] = "You have accepted this invite!"
        redirect_to game_path(@invite.game_id)
      else
        flash[:error] = "It aint work"
        redirect_to player_path(cur_player.id)
      end
    elsif params[:choice] == "decline"
      redirect_to player_path(cur_player)
      flash[:notice] = "You declined this invite"
    end

  end


  private

  def invite_params
    params.require(:invite).permit(:player_id, :game_id, :invited_id, :responded)
  end
end
