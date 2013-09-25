FoodApp::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :products
  resources :wishlists
end
