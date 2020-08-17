Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :items
  # resources :users
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users/login", to: "users#login"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
