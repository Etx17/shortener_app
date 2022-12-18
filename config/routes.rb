Rails.application.routes.draw do
  devise_for :users
  root to: 'links#new'
  get '/dashboard', to: 'pages#dashboard', as: 'admin'
  resources :links, only: %i[new create destroy]
end
