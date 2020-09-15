Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/ping', to: 'workouts#ping'
      resources :workouts, only: [:index, :update, :create]

    end
  end
end
