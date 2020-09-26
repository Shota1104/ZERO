Rails.application.routes.draw do
  resources :posts
  get 'videos/index'
  devise_for :users
  root to: "videos#index"

  resources :videos 
  
end
