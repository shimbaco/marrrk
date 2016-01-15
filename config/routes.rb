Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    resources :bookmarks, only: [:index]
  end

  root "home#index"
end
