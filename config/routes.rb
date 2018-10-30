Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  root to: 'home#index'
end
