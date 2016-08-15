Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landings#index'
  resources :users
  resources :landings
  resources :products do
  	resources :reviews
  end
end
