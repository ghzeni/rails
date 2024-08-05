# frozen_string_literal: true

Rails.application.routes.draw do
  get 'logout' => 'sessions#destroy', :as => 'logout'
  get 'login' => 'sessions#new', :as => 'login'
  get 'register', to: 'users#new'
  get 'articles/new' => 'articles#new', :as => 'new_article'
  get 'articles/:id/destroy' => 'articles#destroy', :as => 'destroy_article'
  get 'users/new'
  # root 'users#new'
  root 'articles#index'

  resources :users
  resources :sessions
  resources :articles do
    resources :comments
  end
end
