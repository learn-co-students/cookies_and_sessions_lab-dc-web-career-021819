Rails.application.routes.draw do
  get root to: 'products#index'

  post '/', to: 'products#add'
end
