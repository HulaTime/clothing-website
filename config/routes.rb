Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'landing_page#index'
	
	get 'home' => 'home#index'

	resources :categories, only: [:index]

	resources :clothing, only: [:index]

	scope "/clothing" do
	  resources :footwear, :casualwear, :formalwear, only: [:index]
	end

	resources :cart

end