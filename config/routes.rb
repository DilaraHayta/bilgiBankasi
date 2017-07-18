Rails.application.routes.draw do

  get '/oturum_ac', to: 'sessions#new', as: :login
  delete '/oturumu_kapat', to: 'sessions#destroy', as: :logout
  resource :session, only: :create


  get 'users/new', to: redirect('/kaydol')
  resources :users, except: :index
  get '/kaydol', to: 'users#new', as: :register




  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'customers#index'


end
