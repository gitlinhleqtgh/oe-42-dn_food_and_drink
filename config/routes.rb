Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  root "home#index"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users, only: %i{new create}
end
