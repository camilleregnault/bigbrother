Rails.application.routes.draw do
  get 'index', to: 'pages#index', as: '/'
  post 'contact', to: 'pages#create'
  root to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
