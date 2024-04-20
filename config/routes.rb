Rails.application.routes.draw do

  devise_for :users
  get '/users/:id', to: 'users#show', as: 'user'

  resources :events, only:[:index]

end
