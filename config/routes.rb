Rails.application.routes.draw do

  root 'welcome#index'
  resources :users
  resources :login

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

end
