Rails.application.routes.draw do
  resources :posts, only: [:index], controller: 'posts'

  resources :users do
    resources :posts, controller: 'user_posts'
  end

  devise_for :users
  root 'posts#index'
end
