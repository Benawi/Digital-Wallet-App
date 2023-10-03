Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  root 'splashes#index'
  
  resources :categories, only: [:index, :new, :show, :create]
  resources :activities, only: [:new, :show, :create]
end
