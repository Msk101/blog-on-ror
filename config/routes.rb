Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'surprise-for-you', to: 'pages#surprise'
  resources :datums, only: [:index, :new, :show, :create, :edit, :update, :destroy ]
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'auth#login'
  post 'login', to: 'auth#login_post'
  delete 'logout', to: 'auth#destroy'
end
