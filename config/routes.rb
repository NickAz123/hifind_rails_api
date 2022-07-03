Rails.application.routes.draw do
  resources :users
  namespace :api do
    namespace :v1 do
      resources :genres
      resources :track_elements
      resources :track_genres
      resources :tracks
      resources :elements
      resources :users

      post "/login", to: "users#login"
    end
  end
end
