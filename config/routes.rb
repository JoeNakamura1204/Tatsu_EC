Rails.application.routes.draw do
  get 'users/show'
  root 'product#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :users, only:%i(show)
  resources :products, only:%i(create destroy show)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
