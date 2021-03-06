Rails.application.routes.draw do
  
  
  
  resources :items
  # resources :users
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users/login", to: "users#login"

  get "/orders", to: "orders#index"
  get "/orders/:id", to: "orders#show"
  post "/orders", to: "orders#create"
  delete "/orders/:id", to: "orders#destroy"
  
  get "/order_items/:id", to: "order_items#show"
  get "/order_items", to: "order_items#index"
  post '/order_items', to: "order_items#create"
  delete "/order_items/:id", to: "order_items#destroy"

  post "/reviews", to: "reviews#create"
  get "/reviews", to: "reviews#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
