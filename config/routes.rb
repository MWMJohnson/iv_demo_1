Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "welcome#index"
  resources :contact_form, only: %i[new create]
  # resources :users, only: %i[new create]
  get "profile", to: "users#show"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

end
