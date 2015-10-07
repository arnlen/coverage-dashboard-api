Rails.application.routes.draw do
  resources :coverage_reports, only: :create
  resources :projects, only: [:index, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
