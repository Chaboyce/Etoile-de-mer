Rails.application.routes.draw do
  get 'contact/index'
  devise_for :users
  root to: 'pages#home'
  get 'concept', to: 'pages#concept'
  resources :contacts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles
  resources :categories
end
