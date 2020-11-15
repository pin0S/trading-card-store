Rails.application.routes.draw do

 

  #routes for main functions of the application
  resources :cards

  #stripe payment routes
  get "payments/success", to: "payments#success"

  #user personal account route
  get "/account/", to: "users#account"

  #configure routes for messenger
  resources :conversations do
    resources :messages
  end

   #root to landing page for the app
   root 'cards#index'

   #devise user routes
   devise_for :users
end
