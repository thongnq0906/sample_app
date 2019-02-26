Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get "users/new"
  root "static_pages#home"
  get "help", to: "static_pages#help", as: "help"
  get "about", to: "static_pages#about", as: "about"
  get "signup", to: "users#new", as: "signup"
  post "/signup",  to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :account_activations, only: :edit
  resources :password_resets, except: [:show, :index, :destroy]
end
