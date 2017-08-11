Rails.application.routes.draw do


  resources :searches
  resources :notices
  resources :devices
  get  'sessions/new', as: :login
  delete '/oturumu_kapat', to: 'sessions#destroy', as: :logout
  resource :session, only: :create


  get 'users/new', to: redirect('/kaydol')
  resources :users, except: :index
  get '/kaydol', to: 'users#new', as: :register


    resources :password_resets





  resources :customers
  resources :solutions do
    resources :comments, only:[:new, :create]
  end


  resources :comments, only: [:edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dashboards#index'


end
