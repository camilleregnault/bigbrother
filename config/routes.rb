Rails.application.routes.draw do
  get 'form', to: 'pages#form', as: '/'
  root to: 'pages#form'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
