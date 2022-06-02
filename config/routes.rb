Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :items do
    collection do
      get :my_items
      get "/category/:category", to: "items#items_category", as: "items_category"
    end
    resources :rents, only: %i[create]
  end
  resources :rents, only: %i[index destroy]
end
