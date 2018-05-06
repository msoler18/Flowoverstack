Rails.application.routes.draw do
  root "questions#index"

  resources :questions do
    resource :comments
    resources :answers 
  end

  resources :answers do
    resource :comments, only: [:new,:create,:index]
  end

end
