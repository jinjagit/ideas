Rails.application.routes.draw do
  devise_for :users
  resources :ideas
  root to: 'ideas#index'
end
