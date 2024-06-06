Rails.application.routes.draw do


  root to: 'home#top'
  get 'home/about', to: 'home#about', as: :about
  get '/users', to: 'users#index'


  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]

end
