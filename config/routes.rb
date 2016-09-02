Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'landing_page#index'
	
	get 'home' => 'home#index'

	resources :categories, only: [:index] do
		get 'mens_footwear' => 'mens_footwear#index'
		# resources :mens_footwear, only: [:index]
	end

	resources :clothing

end