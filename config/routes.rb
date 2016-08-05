Rails.application.routes.draw do
  # resources :microposts
  # resources :users
  resources :users do
    resources :microposts, only: [:new, :create]
  end
  resources :microposts
  #nested resources

  #, except: [:index, :show]
  #parking 7 restful routes to this resource name users
  root "users#index"
  get '/ssy', to: "users#index", as: "my_name"
end
