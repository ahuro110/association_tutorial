Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  root 'tweets#index'

  devise_for :users
  resources :users
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
    resource :comments, only: [:create, :destroy]
  end
end
