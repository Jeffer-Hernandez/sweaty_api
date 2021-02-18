Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :boards, only: [:index]
      resources :discussions, only: [:index, :create]
    end
  end
end
