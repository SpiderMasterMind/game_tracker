Rails.application.routes.draw do
  root to: 'landing#index'


	get '/register', to:  'users#new'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	get '/logout', to: 'sessions#destroy'

	resources :users, only: [:show, :create, :edit, :update]
	resources :games
	resources :plays, only: [:new, :create, :index]


end
