Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  get 'items/new'
  root to: 'pages#home'
  devise_for :users
  resources :items, only: %i[index show new create] do
    resources :rents, only: %i[new create]
  end
  resources :rents, only: %i[index destroy]
end
