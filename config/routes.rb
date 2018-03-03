Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  #トップページのrouter
  root to:"toppages#index"
  get 'toppages/index'

  root to: 'tasks#index'
  resources :tasks
  
  #サインアップのrouter
  get 'signup', to: 'users#new'
  resources :users
  
  #ログインのrouter
  get 'login', to: 'sessions#new'            
  post 'login', to: 'sessions#create'
  
  delete 'logout', to: 'sessions#destroy'
  
end