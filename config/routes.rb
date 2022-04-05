Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars, only: [:index, :create]
  resources :location_reports, only: [:create]
  get "cars/:id/reports", to: "cars#reports"
end
