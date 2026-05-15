Rails.application.routes.draw do
  devise_for :users
  #resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  #resource :session, controller: "clearance/sessions", only: [:create]

  #resources :users, controller: "clearance/users", only: [:create] do
   # resource :password,
    #  controller: "clearance/passwords",
     # only: [:create, :edit, :update]
  #end

  # get "/sign_in" => "devise/sessions#new", as: "sign_in"

  # delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  # get "/sign_up" => "devise/registrations#new", as: "sign_up"
  get 'bookings', to: "bookings#index", as: 'bookings'

  get 'contact', to: "contact#index", as: 'contact'

  get 'about', to: "about#index", as: 'about'

	root 'home#index', as: 'home'

  resources :bikes
  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
