Rails.application.routes.draw do
  devise_for :users #I t adds all CRUD routes for a User
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
