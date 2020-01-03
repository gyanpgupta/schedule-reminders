Rails.application.routes.draw do
  resources :reminders
  devise_for :users

  root to: 'home#index'
end
