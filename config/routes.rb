Rails.application.routes.draw do
  resources :bars, only: [:index]
  resources :categories
  resources :dramas, only: [:index]
  resources :articles, only: [:index, :show]
  devise_for :users
  get 'kakaos/show'
  resources :comics, only: [:index, :show]
  get "search" => "articles#search"
  resources :daums, only: [:show]
  resources :kakaos, only: [:show]
  get 'home/index'
  root "comics#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
