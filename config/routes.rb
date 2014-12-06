Shouter::Application.routes.draw do
  root to: 'homes#show', via: :get
  # Added by monban
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
end
