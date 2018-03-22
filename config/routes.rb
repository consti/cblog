Rails.application.routes.draw do
  resources :posts
  devise_for :authors, controllers: { registrations: "registrations"}

  root to: "posts#index"
end
