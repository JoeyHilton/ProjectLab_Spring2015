Rails.application.routes.draw do

  root 'static_pages#home'

  get '/about', to: 'static_pages#about', as: :about
  get '/contact', to: 'static_pages#contact', as: :contact

  resources :projects 

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, :only => [:show, :index]
  get 'users/profile'
  
end
