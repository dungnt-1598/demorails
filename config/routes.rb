Rails.application.routes.draw do
  resources :likes
  resources :categories
  devise_for :users
  resources :tags
  resources :comments do
    post 'likes_comment', to: 'likes#create_comment'
  end

  resources :posts do
    resources :likes, only: [:create]
  end

  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
