Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show, :index]

  resources :friendships, only: [:create, :destroy, :accept] do 
  	member do 
  		put :accept
  	end
end

  resources :activities, only: [:index]
	
   resources :posts, only: [:edit, :create, :update, :destroy]

   resources :post_comments, only: [:edit, :create, :update, :destroye]

   root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
