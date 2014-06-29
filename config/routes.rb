Rails.application.routes.draw do

  root 'welcome#index'
  resources :users

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

end
