Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'landing_page#index'
	
	get 'home' => 'home#index'

	resources :categories, only: [:index]

	resources :clothing

	namespace :clothing do
		resources :women, :men, only: [:index]
	end

	scope "/clothing" do
	  scope "/women" do
	    resources :footwear, :casualwear, :formalwear, only: [:index] do
	    end
	  end
	end

	scope "/clothing" do
	  scope "/men" do
	    resources :footwear, :casualwear, :formalwear, only: [:index] do
	    end
	  end
	end
		
	resources :cart

end