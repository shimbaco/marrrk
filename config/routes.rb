Rails.application.routes.draw do
  devise_for :users

  namespace :with_cookie do
  end

  namespace :no_cookie do
    namespace :api do
      resources :bookmarks, only: [:index]
    end

    resource :pages, only: [] do
      get :ua
    end
  end

  root "home#index"
end
