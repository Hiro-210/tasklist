Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'signup', to: 'users#new'
  post 'login', to: 'sessions#create'
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
  
  resources :tasks, only: [:create, :destroy, :show]
end