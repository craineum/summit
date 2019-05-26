Rails.application.routes.draw do
  namespace :admin do
    resources :companies
    resources :users

    root to: "companies#index"
  end
end
