Rails.application.routes.draw do
  root to: "home#index"
  get "/about", to: "home#index"
  get "contact", to: "home#inex"

  namespace :api, format: "json" do
    resources :tasks, only: [:index, :create, :update]
  end
end
