Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :workouts, only: [:index, :create]

    end
  end
end
