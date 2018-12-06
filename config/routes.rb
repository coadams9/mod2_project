Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: '/', to: 'welcome#index'
  resources :players, except: :destroy
  resources :games
  post '/games/:id/join_game', to: 'games#join_game'
  post '/invites/:id/rsvp/:choice', to: 'invites#rsvp', as: "rsvp"
  resources :invites

  # get '/players/:id/game_invite', to: 'games#show'

  get '/welcome', to: 'welcome#index'
  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  delete '/logout', to: 'login#destroy'

  # post '/players/join_game' to: 'players#show'

  # get '/players/:id/games'


end
