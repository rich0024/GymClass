Rails.application.routes.draw do
  root 'sesssions#home'
  get '/logout', to: 'sessions#logout'

  resources :members
  resources :fitness_classes
  resources :instructors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
