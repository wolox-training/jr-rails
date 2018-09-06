Rails.application.routes.draw do
	devise_for :users #It adds all CRUD routes for a User
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	# config/routes.rb
	# ...

	# API Endpoints
	api_version(module: 'api/v1', path: { value: 'api/v1' }, defaults: { format: :json }) do
	    resources :users do
	        collection do
	            resources :sessions, only: [:create] do
	                collection do
	                  post :renew
	                  post :invalidate_all
	                end
	            end
	        end
	    end
	end
end
