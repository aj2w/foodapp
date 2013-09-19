FoodApp::Application.routes.draw do
  root 'welcome#index'
  resources :products
  resources :wishlists
end
