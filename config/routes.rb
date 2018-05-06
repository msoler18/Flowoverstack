Rails.application.routes.draw do
  #Routes for auth Users
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  root "questions#index"

  resources :questions do
    resource :comments
    resources :answers 
  end

  resources :answers do
    resource :comments, only: [:new,:create,:index]
  end

  resources :users, only: [:new,:create]

end
