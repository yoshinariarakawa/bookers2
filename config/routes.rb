Rails.application.routes.draw do
   devise_for :users
  root to: "homes#top"
  get'about'=> 'homes#about'
  get'edit'=> 'books#edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :index, :show, :edit, :about, :create]
  resources :favorites, only: [:create, :destroy]
  resources :users, only: [:new, :index, :show, :edit, :about]
end
