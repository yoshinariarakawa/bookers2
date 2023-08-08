Rails.application.routes.draw do
  root to: "homes#top"
  get'about'=> 'homes#about'
  get'edit'=> 'books#edit'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :index, :show, :edit, :about]
  resources :favorites, only: [:create, :destroy]
  resources :users
end
