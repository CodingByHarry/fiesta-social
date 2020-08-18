Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users

  namespace :manage do
    root to: 'dashboard#index'
    resources :items, only: [:new, :create]
  end

end
