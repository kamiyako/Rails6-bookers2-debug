Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/home/about"=>"homes#about"
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update]

end
