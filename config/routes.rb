Rails.application.routes.draw do

  devise_for :users
  get '/users/:id', to: 'users#show', as: 'user'

  resources :events, only:[:index, :new, :create, :show]

  resources :events do
    resources :event_participants, only: [:create, :destroy]
  end

end
