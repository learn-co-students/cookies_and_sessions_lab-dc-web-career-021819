Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "application#add_to_cart", as: "cart"
  get "/cart", to: "application#cart"
  post "/", to: "application#add_item_to_cart"
end
