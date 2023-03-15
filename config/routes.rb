Rails.application.routes.draw do
  resources :sells
  resources :books
  root 'dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
