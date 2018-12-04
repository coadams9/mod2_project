Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :players, except: :destroy
  resources :games
  post '/games/:id/join_game', to: 'games#join_game'

  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  delete '/logout', to: 'login#destroy'

  # post '/players/join_game' to: 'players#show'

  # get '/players/:id/games'


end
