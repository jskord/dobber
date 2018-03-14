Rails.application.routes.draw do
  get '/' => 'pages#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/new-dobber' => 'dogs#new'
  post '/create-dobber' => 'dogs#create'
  get '/feed' => 'dogs#feeding'
  get '/walk' => 'dogs#walk'
  get '/treat' => 'dogs#treat'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
