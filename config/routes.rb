Rails.application.routes.draw do
  get 'users/new'

  root "static_pages#home"
  # get 'static_pages/home'
  # get 'static_pages/help'

  # edit route , enter /help jump to static_pages/help
  # get  '/help', to: 'static_pages#help'
  get  '/help',    to: 'static_pages#help' #, as: 'helf'
  get  '/home',  to: 'static_pages#home'
  get  '/about',  to: 'static_pages#about'
  get  '/contact',  to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
