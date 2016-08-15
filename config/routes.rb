Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landings#index'
  resources :users
  resources :landings
  # Nest the reviews routes under the product routes so that the Reviews controller can be used for review actions 
  resources :products do
  	resources :reviews
  end
  # Nest the routes for comments under topics so that the Comments controller can be used for comment actions
  resources :topics do
  	resources :comments
  end
end
