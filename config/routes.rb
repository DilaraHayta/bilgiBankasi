Rails.application.routes.draw do
  get 'users/new', to: redirect('/kaydol')
  resources :users, except: :index
  get '/kaydol', to: 'users#new', as: :register


  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'customers#index'


end
