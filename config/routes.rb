Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
 
  resources :units, only: [:show, :index]
  resources :topics, only: [:show, :index]
  resources :tips
  resources :lessons, only: [:show, :index] do 
    resources :tips 
  end 
  resources :users do 
    resources :tips, only: [:index]
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
