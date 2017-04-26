Rails.application.routes.draw do
  root to: "carpools#index" 
  get '/register', to: 'users#new', as: :register
  get '/login', to: 'sessions#new', as: :login
  get '/logout', to: 'sessions#destroy', as: :logout

  namespace :admin do
    resources :carpools, only: [:index]
    get '/approve/:id', to: 'carpools#approve', as: :approve_carpool
    get '/deny/:id', to: 'carpools#deny', as: :deny_carpool
  end

  resources :carpools, only: [:index, :new, :create, :show]
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  post '/info_requests/:id', to: 'info_requests#create', as: :make_info_request
  resources :info_requests, only: [:index]
  post '/info_requests/sent_info/:id', to: 'info_requests#sent_info', as: :admin_sent_info
end