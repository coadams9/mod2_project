class LoginController < ApplicationController
  def new
  end

  def create
    @player = Player.find_by username: params[:username]
    if @player && @player.authenticate(params[:password])
      session[:player_id] = @player.id
      redirect_to player_path(@player)
    else
      flash[:error] = "Not a valid login."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:player_id] = nil
    redirect_to login_path
  end


end
