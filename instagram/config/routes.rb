Rails.application.routes.draw do
  root 'home#index'
  resources :posts, only: [:index], controller: 'posts'

  resources :users do
    resources :posts, controller: 'user_posts'
  end

  devise_for :users
end
