Rails.application.routes.draw do
  resources :discounts
  get 'carts/show'
  root to:'pages#home'
  devise_for :users
  resources :products
  resources :categories
  resources :order_items
  resource :carts, only:[:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
