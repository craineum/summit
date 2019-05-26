Rails.application.routes.draw do
  namespace :admin do
    resources :companies
    resources :events
    resources :raffle_items
    resources :users

    root to: "companies#index"
  end
end
