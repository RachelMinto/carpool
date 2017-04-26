Rails.application.routes.draw do
  root to: "carpools#index"
  get '/register', to: 'users#new', as: :register
  get '/login', to: 'sessions#new', as: :login
  get '/logout', to: 'sessions#destroy', as: :logout

  namespace :admin do
    resources :carpools, only: [:index]
  end

  resources :carpools, only: [:index, :new, :create, :show]
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
end