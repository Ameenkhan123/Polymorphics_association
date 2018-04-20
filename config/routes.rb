Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
    get 'home/show'


 root to: "products#index"
resources :home
  devise_for :models
resources :products
resources :portfolios
resources :places
resources :images

 get 'products/image_index'

  post 'products/image_index'
  get '/image' => 'products#image_index'
post 'products/image_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
