Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :items, only: %i[index show new create] do
    resources :rents, only: %i[new create]
  end
  resources :rents, only: %i[index destroy]
end
