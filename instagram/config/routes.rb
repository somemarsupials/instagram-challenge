Rails.application.routes.draw do
  devise_for :users
  resource :posts

  root 'home#index'
end
