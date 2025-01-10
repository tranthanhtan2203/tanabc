Rails.application.routes.draw do
  devise_for :adms
  # root to: "home#homepage"
  root "products#index"
  resource :session
  resources :passwords, param: :token
  resources :products do
    resources :subscribers, only: [ :create ]
  end

  
end
