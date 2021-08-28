Rails.application.routes.draw do
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home", to:"home#index"
  get "payment", to:"payment#index"
  post "payment/new", to:"payment#new", as:'new'
  get "payment/new", to:"payment#index"

end
