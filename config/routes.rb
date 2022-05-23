Rails.application.routes.draw do
  resources :tracks
  resources :track_genres
  resources :track_elements
  resources :genres
  resources :elements
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
