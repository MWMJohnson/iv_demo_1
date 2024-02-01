Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "welcome#index"
  resources :contact_form, only: %i[new create]
  # resources :users, only: %i[new create]
  
  resources :users, only: [:edit, :update, :destroy] do
    resources :settings, only: [:index]
  end
  
  get "dashboard/:id", to: "users#show", as: :dashboard
  # get "register", to: "registrations#new"
  # post "register", to: "registrations#create"
  get "leadership", to: "employees#index"
  # get "login", to: "logins#new"

  resource :registration
  resource :session
  resource :password_reset
  resource :password

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
end
