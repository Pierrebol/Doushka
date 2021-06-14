Rails.application.routes.draw do

  get 'disguises/index'
  get 'disguises/show'
  get 'disguises/new'
  get 'disguises/create'
  get 'disguises/update'
  get 'disguises/edit'
  get 'disguises/destroy'

  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
