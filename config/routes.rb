Rails.application.routes.draw do
  root 'top_scorers#index'
  resources :top_scorers, only: :index
end
