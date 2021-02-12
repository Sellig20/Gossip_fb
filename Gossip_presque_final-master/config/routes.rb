Rails.application.routes.draw do
	root 'gossips#index'

  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
	resources :gossips
	resources :users, only: [:new, :create, :destroy]
	resources :sessions, only: [:new, :create, :destroy]
end
