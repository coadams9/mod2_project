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
      flash[:notice] = "Please try again."
      render :new
    end
  end



  private

  def invite_params
    params.require(:invite).permit(:player_id, :game_id, :invited_id, :responded)
  end
end
