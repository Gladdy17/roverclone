Rails.application.routes.draw do
  devise_for :users
  get 'homes/index'
  get "up" => "rails/health#show", as: :rails_health_check
  root "homes#index"
  resources "members"
  resources "homes"
end
