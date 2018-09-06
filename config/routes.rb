Rails.application.routes.draw do
<<<<<<< HEAD
	devise_for :users

=======
	devise_for :users #It adds all CRUD routes for a User
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	# config/routes.rb
	# ...

	# API Endpoints
>>>>>>> Added the files in Gist to project. Installed new gems added. Renamed the migration in the Gist and ran it. Erased the line 'before_action :authenticate_user' because was for auth with Device in views but that was blocking the current auth made for APIs. Made the POST and it returned the access_token successfully.
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
