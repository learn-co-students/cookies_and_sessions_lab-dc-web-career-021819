Rails.application.routes.draw do
  resources :products
  get "/", to: "products#index"
  get 'products/add'
  get "/products/index", to: "products#index"

  post 'products/add', to: 'products#add'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
