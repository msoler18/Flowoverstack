Rails.application.routes.draw do
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
