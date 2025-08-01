Rails.application.routes.draw do
  post "/contacts", to: "contacts#create"
  get "/contacts", to: "contacts#index"
  post "/auth/login", to: "auth#create"
  get "/auth/login/user", to: "auth#show"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  match '*path', to: 'application#not_found', via: :all, constraints: ->(req) { !req.path.start_with?('/auth') }
end
