Rails.application.routes.draw do
  
  resources :logs
  resources :routes do
    resources :users, only: [:show]
    resources :grades, only: [:show]
  end
  resources :users do
    resources :logs, only: [:index]
  end

  resources :ratings
  resources :grades
  resources :types

  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  # get '/current_user', to: "sessions#current_user"
  get '/me', to: "users#show"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
