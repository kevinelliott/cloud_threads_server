Rails.application.routes.draw do
  get 'setup/first', as: :setup
  post 'setup/second', as: :setup_second
  post 'setup/third', as: :setup_third
  post 'setup/complete', as: :setup_complete
  get 'setup/hurray', as: :setup_hurray

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
