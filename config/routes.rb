Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'users/show'
  root 'products#index'
  devise_for :users

  resources :users, only:%i(show)
  resources :products, only:%i(create destroy show)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
