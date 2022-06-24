Rails.application.routes.draw do
  get 'products/create'
  get 'products/edit'
  get 'products/index'
  get 'products/new'
  get 'products/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/create'
  get 'users/new'
  get 'users/index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/' => 'users#index'

  get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :products, only: [:index, :new, :create, :destroy]   
   root "products#index"  
   get "/product", to: "products#index"
   get "/create", to: "products#create"
   get "/show", to: "products#show"
   resources :products
 


end
