Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/profile'

  devise_for :users
  root 'static_pages#home'

  get '/about', to: 'static_pages#about', as: :about
  get '/contact', to: 'static_pages#contact', as: :contact

  resources :projects 
  
end
