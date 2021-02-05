Rails.application.routes.draw do
  # root "urls#index"
  get "/", to: "urls#new"

  resources :urls

  get "/shorten/:shorten_url", to: "urls#redirect"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
