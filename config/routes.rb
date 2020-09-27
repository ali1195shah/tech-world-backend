Rails.application.routes.draw do
  resources :joiners
  resources :items
  resources :orders
  resources :cards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
