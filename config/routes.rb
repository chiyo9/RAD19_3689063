Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get '/home',    to: 'static_pages#home'
  get '/courses', to: 'static_pages#courses'
  get '/signup',   to: 'users#new'
end
