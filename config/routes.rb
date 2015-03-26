Rails.application.routes.draw do
  get '/users' => 'users#index', as: :users

  get 'users/show'

  get 'users/profile'

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  root 'static_pages#home'

  get '/about', to: 'static_pages#about', as: :about
  get '/contact', to: 'static_pages#contact', as: :contact

  resources :projects 

  resources :users, :only => [:show, :index]
  
end
