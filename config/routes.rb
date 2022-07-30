Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "bookings/new", to: "bookings#new"
  # get "surfboards/new", to: "surfboards#new"
  # post "bookings", to: "bookings#create"
  # post "surfboards", to: "surfboards#create"
  # patch "bookings/:id", to: "bookings#update"
  # patch "surfboards/:id", to: "surfboards#update"

  resources :surfboards, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:show, :index]
  get "/my_bookings", to: "pages#my_bookings"
end


# get    "restaurants",          to: "restaurants#index"

# get    "restaurants/new",      to: "restaurants#new",  as: :new_restaurant
# post   "restaurants",          to: "restaurants#create"

# NB: The `show` route needs to be *after* `new` route.
# get    "restaurants/:id",      to: "restaurants#show", as: :restaurant

# get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
# patch  "restaurants/:id",      to: "restaurants#update"

# delete "restaurants/:id",      to: "restaurants#destroy"
