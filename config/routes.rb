Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # get  'books'   => 'books#index'
  # post 'books'    => 'books#create'
  # get  'books/:id' => 'books#show'
  resources :books, only: [:show, :index, :create, :update, :destroy]
  get  'home'    => 'pages#home'
  get  'mdr'     => 'pages#mdr'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
