Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'
  get '/home',    to: 'static_pages#home'
  get '/courses', to: 'static_pages#courses'
  get '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
