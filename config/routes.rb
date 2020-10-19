Rails.application.routes.draw do
  root "welcome#index"
  resources :foods
  resources :search, only: :index
end
