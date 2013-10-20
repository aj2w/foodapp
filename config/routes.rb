FoodApp::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get '/search' => 'welcome#search'
  get '/location' => 'products#location'
  get '/users/:id' => 'users#show'
  resources :products
  resources :wishlists
end
