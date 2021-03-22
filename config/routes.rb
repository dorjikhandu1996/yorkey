Rails.application.routes.draw do
  get 'carts/show'
  root to:'pages#home'
  devise_for :users
  resources :distypes
  resources :products
  resources :categories
  resources :order_items
  resource :carts, only:[:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 