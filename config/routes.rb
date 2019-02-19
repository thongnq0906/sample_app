Rails.application.routes.draw do
  get "users/new"
  root "static_pages#home"
  get "help", to: "static_pages#help", as: "help"
  get "about", to: "static_pages#about", as: "about"
  get "signup", to: "users#new", as: "signup"
  post "/signup",  to: "users#create"
  resources :users
end
