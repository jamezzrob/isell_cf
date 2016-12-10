Rails.application.routes.draw do
  # below will give a basic crud
  resources :profiles

# Add devise registration controller to allow sign up path
  devise_for :users, controllers: { registrations: "registrations" }
  root "home#index"
  get 'home/index'

  # Add an about page  route
  get "/about", to: "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
