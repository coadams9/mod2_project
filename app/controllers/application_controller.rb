class ApplicationController < ActionController::Base
  helper_method :cur_player

  def cur_player
    if session[:player_id]
      Player.find(session[:player_id])
    end
  end

  def authorize
    unless cur_player
      flash[:notice] = "You need to be logged in for that."
      redirect_to login_path
    end
  end

end
