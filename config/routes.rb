Rails.application.routes.draw do
  devise_for :users

  root 'users#index'
  resources :transactions
  resources :categories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
