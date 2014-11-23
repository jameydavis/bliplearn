Rails.application.routes.draw do
  #root to: 'visitors#index'
  root to: 'splash#index'
  devise_for :users
  resources :users
  get '/courses', to: 'courses#index'
end
