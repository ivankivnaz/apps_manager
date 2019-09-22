Rails.application.routes.draw do
  root to: "web_applications#index"

  resources :web_applications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
