Rails.application.routes.draw do
  resources :companies
  resources :teams
  resources :matches
  resources :users

  root 'matches#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
