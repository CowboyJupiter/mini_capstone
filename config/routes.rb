Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'
    patch '/products/:id' => 'products#update'

    post "/users" => "users#create"

    post "/suppliers" => "suppliers#create"
    get "/supplier" => "suppliers#index"

    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"

    post "/carted_products" => "carted_products#create"

    



  end
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  get "/products/:id" => "products#show"
end
