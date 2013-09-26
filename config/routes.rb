FoodApp::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get '/search' => 'welcome#search'
  get '/test' => 'products#test'
  resources :products
  resources :wishlists
end
