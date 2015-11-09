Rails.application.routes.draw do
  resources :customers, only: [:index, :show, :create, :update, :destroy]
  resource :sessions, only: [:create, :destroy]
end
