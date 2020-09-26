Rails.application.routes.draw do
  get 'videos/index'
  devise_for :users
  root to: "videos#index"

  resources :videos 
  
end
