Rails.application.routes.draw do

  get "/users", to: "users#index"
  get "/inspections", to: "inspections#index"
  get "/restaurants", to: "restaurants#index"
  get "/reports", to: "reports#index"



  post "/login", to: "users#login"
  get "/keep_logged_in", to: "users#keep_logged_in"
  post "/users", to: "users#create"

  post "/inspections", to: "inspections#create"
  patch "/inspections", to: "inspections#update"
  delete "/inspections", to: "inspections#destroy"

  patch "/reports", to: "reports#update"
  post "/reports", to: "reports#create"
  delete "/reports/delete", to: "reports#destroy"

end
