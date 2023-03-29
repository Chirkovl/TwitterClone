Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :tweets, only: :create do
    resources :likes, only: %i[create destroy]
  end
  get :dashboard, to: "dashboard#index"

  resources :usernames, only: %i[new update]
end
