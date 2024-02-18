Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root "posts#index"
  get 'user/my_profile', to: 'users#my_profile'

  resources :likes

  resources :relationships, only: [:create, :destroy]

  resources :posts do
    resources :comments
    post 'like' ,to: 'likes#create'
    post 'unlike' ,to: 'likes#destroy'
  end

  resources :users do
    member do
      get :following, :followers
    end
  end

end
