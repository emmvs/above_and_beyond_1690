Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants do
  # NESTED RESOURCES
    resources :reviews, only: [:new, :create]

  # Nested routes
  # Collection (Costum index page for several items that belong to parent)
      # Index page | DO not Have the id
    collection do
      # get 'restaurants/top', to: 'restaurants#top'
      # get 'top'
      get :top
    end

    member do
      # Show page | Have the id
      # get 'restaurants/:id/chef', to: 'restaurants#chef'
      get 'chef'
    end
  end

  resources :reviews, only: [:destroy]
  # get '/restaurants', to: 'restaurants#index'
end
