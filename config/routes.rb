Rails.application.routes.draw do
  root to: 'home#index'

  post 'user_token' => 'user_token#create'

  resources :users, only: %w(create update)
end
