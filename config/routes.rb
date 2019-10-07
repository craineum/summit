Rails.application.routes.draw do
  namespace :admin do
    resources :attendees do
      post 'generate_badge', to: 'attendees#generate_badge'
    end
    resources :companies
    resources :events
    resources :raffle_entries
    resources :raffle_items
    resources :users

    root to: "companies#index"
  end
end
