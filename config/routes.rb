Rails.application.routes.draw do

  get "/users", to: "users#index"
  get "/inspections", to: "inspections#index"
  get "/restaurants", to: "restaurants#index"
  get "/reports", to: "reports#index"



  post "/login", to: "users#login"
  get "/keep_logged_in", to: "users#keep_logged_in"
  post "/users", to: "users#create"

end
