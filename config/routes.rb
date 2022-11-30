Rails.application.routes.draw do
  devise_for :users
  root to: "candos#index"
  resources :candos
end
