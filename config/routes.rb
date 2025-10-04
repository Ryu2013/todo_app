Rails.application.routes.draw do
  resources :todos
  root "home#index"
  get "home/css" => "home#css", as: :home_css

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
