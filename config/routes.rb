Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books, only: [:index, :show]
      resources :rents, only: [:index, :create]
    end
  end

  devise_for :users
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
