Rails.application.routes.draw do

  root "pages#home"

  get "/about_us", to: "pages#about_us"
  get "/contact_us", to: "pages#contact_us"

  resources :members
  resources :ministries
  resources :sermons
  resources :events
  resources :prayer_requests, only: [:new, :create]
  resources :donations, only: [:index, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
