Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :items do
    collection do
      get :my_items
    end
    resources :rents, only: %i[new create]
  end
  resources :rents, only: %i[index destroy]
end
