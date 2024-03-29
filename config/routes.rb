Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "dashboards#index"
  resources :logs, only: [:new, :create]
  resources :games, only: [:show, :destroy]

  get '/reports/generate/:type(/:game)', to: 'reports#generate', as: :report_generate
  get '/credits', to: 'credits#index', as: :credits
end
