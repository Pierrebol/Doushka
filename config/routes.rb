Rails.application.routes.draw do
  get 'profiles/profile'
  resources :disguises do
    resources :bookings, only: :create
  end

  resources :bookings, only: [ :destroy, :index ] do
    member do
      patch '/accept', to: 'bookings#accept'
    end
  end




  devise_for :users
  root to: 'pages#home'

  get '/profile', to: 'profiles#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
