Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  get "/" => 'products#index'
  get "/tacos" => 'products#index'
  get "/tacos/new" => 'products#new'
  post "/tacos" => 'products#create'

  post "/orders" => 'orders#create'
  get "/orders/:id" => 'orders#show'

  # post "/shopping_cart" => 'carted_tacos#create'
  # get "/shopping_cart/" => 'carted_tacos#index'
  # delete "/shopping_cart/:id" => 'carted_tacos#destroy'
  get "/shopping_cart" => 'carted_tacos#index'
  post "/shopping_cart" => 'carted_tacos#create'
  delete "/shopping_cart/:id" => 'carted_tacos#destroy'
  post "/checkout" => 'carted_tacos#edit'
  
  get "/tacos/:id/edit" => 'products#edit'
  delete "/tacos/:id" => 'products#destroy'
  patch "/tacos/:id" => 'products#update'
  get "/tacos/:id" => 'products#show'
  post "/search" => 'products#search'

  
end
