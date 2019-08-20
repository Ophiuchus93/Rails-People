Rails.application.routes.draw do
  get 'static_people/home'
  get 'static_people/about'
  root "static_people#home"

  get "/about", to: "static_people#about"
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
