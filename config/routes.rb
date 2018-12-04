Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :players, except: :destroy do
    resources :games
  end
  

  # get '/players/:id/new_game', to: 'game_player#new'


end
