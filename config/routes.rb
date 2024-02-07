Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root "posts#index"

  resources :likes

  resources :posts do
    resources :comments
    post 'like' ,to: 'likes#create'
    post 'unlike' ,to: 'likes#destroy'
  end

  resources :users do
    member do
      get 'following', to: 'users#following'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
end
