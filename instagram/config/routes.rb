Rails.application.routes.draw do
  resource :posts

  root 'home#index'
end
