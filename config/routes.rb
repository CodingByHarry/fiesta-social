Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users

  namespace :dashboard do
    root to: 'dashboard#index'
  end

end
