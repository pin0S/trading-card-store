Rails.application.routes.draw do
  root 'cards#index'
  devise_for :users

  resources :cards

  get "payments/success", to: "payments#success"

  get "/account/", to: "users#account"

end
