Rails.application.routes.draw do
  resources :disguises

  resources :bookings, only: [:index, :new, :create, :destroy]


  devise_for :users
  root to: 'pages#home'

  get '/profile', to: 'profiles#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
