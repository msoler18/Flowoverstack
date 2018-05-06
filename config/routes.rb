Rails.application.routes.draw do
  root "questions#index"
  resources :questions do
    resources :comments
    resources :answers do
      resources :comments
    end   
  end  
end
