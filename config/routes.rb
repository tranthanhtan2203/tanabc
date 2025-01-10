Rails.application.routes.draw do
  devise_for :adms
  root to: "home#homepage"
  resource :session
  resources :passwords, param: :token
  resources :products do
    resources :subscribers, only: [ :create ]
  end

  root "products#index"
end
