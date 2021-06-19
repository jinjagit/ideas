Rails.application.routes.draw do
  devise_for :users
  resources :ideas
  resources :comments
  root to: 'ideas#index'
end
