Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    resources :bookmarks, only: [:index]
  end

  get "ua", to: "home#ua"

  root "home#index"
end
