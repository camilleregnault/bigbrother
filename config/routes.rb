Rails.application.routes.draw do
  get 'contacts', to: 'contacts#index', as: :contacts

  get 'contacts/new', to: 'contacts#new', as: :new
  post 'contacts', to: 'contacts#create', as: :create
  
  get 'contacts/:id', to: 'contacts#show', as: :contact

  get 'contacts/:id/edit', to: 'contacts#edit', as: :edit
  patch 'contacts/:id', to: 'contacts#update', as: :update

  delete 'contacts/:id', to: 'contacts#destroy', as: :destroy
  
  # resources :contacts
  root to: 'contacts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
