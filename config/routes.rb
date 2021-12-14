Rails.application.routes.draw do
  #get 'topics/new', to: "topics#new"
  post "topics", to: "topics#create"
  get 'session/new'
 # get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/index'

  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get '/classworks',  to: 'classworks#home'
  get  '/classworks/index', to: 'classworks#index'
  post '/classworks/search', to: 'classworks#search'
  get  '/classworks/:id', to: 'classworks#show'
  
  resources :users
  resources :topics
  #resources :classworks
end
