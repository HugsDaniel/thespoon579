Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # verb "url", to: "controller#action"

  get "/restaurants", to: "restaurants#index"
  post "/restaurants", to: "restaurants#create"

  get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant
  delete "/restaurants/:id", to: "restaurants#destroy"
  patch "/restaurants/:id", to: "restaurants#update"

  get "/restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant

end
