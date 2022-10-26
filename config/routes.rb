Rails.application.routes.draw do
  resources :products
  get 'verification/index'
  get 'verification/create'
   get 'verification/match'
  
  get 'admin/adminview'
  get 'admin/home'
  

  
    resources :categories
  
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

end
