Rails.application.routes.draw do
  namespace :admin do
    resources :companies

    root to: "companies#index"
  end
end
