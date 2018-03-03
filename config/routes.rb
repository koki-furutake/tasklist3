Rails.application.routes.draw do

  root to:"tasks#index"
  
  #サインアップのrouter
  get 'signup', to: 'users#new'
  
  #ログイン/ログアウトのrouter
  get 'login', to: 'sessions#new'            
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users,only:[:show, :new,:create]
  resources :tasks
end