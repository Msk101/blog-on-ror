Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :datums, only: [:index, :new, :show, :create, :edit, :update, :destroy ]
end
