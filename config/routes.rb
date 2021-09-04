Rails.application.routes.draw do
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home", to:"home#index"
  get "payment", to:"payment#new", as: 'card_data'
  post "payment", to:"payment#create"

end
