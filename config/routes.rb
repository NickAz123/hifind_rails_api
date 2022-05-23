Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :genres
      resources :track_elements
      resources :track_genres
      resources :tracks
      resources :elements
    end
  end
end
