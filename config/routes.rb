Rails.application.routes.draw do
  resources :items
<<<<<<< HEAD
  # below will give a basic crud
  resources :profiles

# Add devise registration controller to allow sign up path
=======
  resources :profiles

  # Add devise registrations controller to allow after sign up path
>>>>>>> d3fe4a23227c3ece41399469052121332a62fbea
  devise_for :users, controllers: { registrations: "registrations" }
  root "home#index"
  get 'home/index'

<<<<<<< HEAD
  # Add an about page  route
  get "/about", to: "home#about"
=======
  # Add about page route
  get "about", to: "home#about"
>>>>>>> d3fe4a23227c3ece41399469052121332a62fbea

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
