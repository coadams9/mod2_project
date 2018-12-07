class LoginController < ApplicationController
  def new
  end

  def create
    @player = Player.find_by username: params[:username]
    if @player.authenticate params[:password]
      session[:player_id] = @player.id
      redirect_to player_path(@player)

    else
      flash[:notice] = "Not a valid login."
      render :new
    end
  end

  def destroy
    session[:player_id] = nil
    redirect_to games_path
  end


end
