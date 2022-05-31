Rails.application.routes.draw do
  resources :itens, only: %i[index show new create search]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
