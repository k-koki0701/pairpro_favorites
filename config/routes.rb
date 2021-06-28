Rails.application.routes.draw do
  root "sessions#new"
  resources :sessions, only: [:new, :create, :destroy]
  resources :blogs
  resources :users, only: [:new, :create, :show] do
    collection do
      get :favorite
    end
  end
  resources :favorites, only: [:create, :destroy]
end
