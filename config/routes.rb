Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :boards, only: [:index]
      resources :discussions, only: [:index, :create]
      resources :users, only: [:index, :create]
      resources :comments, only: [:index, :create, :update]
    end
  end
end
