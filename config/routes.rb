Rails.application.routes.draw do
  devise_for :users

  authenticated do
    root to: "categories#index", as: :authenticated_user
  end
  root to: "home#index", as: :unauthenticated_user
  
  resources :entities
  resources :categories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
