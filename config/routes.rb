Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get 'all_users' => 'users#index'
  resources :users
end
