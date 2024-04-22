# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  namespace :admin do
    resources :users

    root to: 'users#index'
  end
  devise_for :users
  root to: 'home#index'

  get :activate_all_users, to: 'home#activate_all_users'

  mount Que::View::Engine => '/que_view'
end
