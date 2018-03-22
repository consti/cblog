Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations"}

  root to: "home#index"
end
