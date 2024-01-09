Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "welcome#index"
  resources :contact_form, only: %i[new create]
  # resources :users, only: %i[new create]
  get "dashboard", to: "users#show"

  get "register", to: "registrations#new"
  post "register", to: "registrations#create"
  get "leadership", to: "employees#index"

end
