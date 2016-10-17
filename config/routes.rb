Rails.application.routes.draw do
  resources :edificis
  resources :ites
  resources :deficiencies
  devise_for :users
  get 'home/index'
  get 'home/contacta'

  root :to => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
