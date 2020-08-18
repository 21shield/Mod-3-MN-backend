Rails.application.routes.draw do
  
  
  resources :items
  # resources :users
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users/login", to: "users#login"

  get "/orders", to: "orders#index"
  get "/orders/:id", to: "orders#show"
  post "/orders", to: "orders#create"
  

  get "/order_items", to: "order_items#index"
  post '/order_items', to: "order_items#create"
  patch "/orders/:id", to: "orders#addToOrder"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
