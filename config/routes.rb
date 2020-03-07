Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  root 'chatroom#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  #get '/signup', 'users#new'

  mount ActionCable.server, at: '/cable'
  
end
