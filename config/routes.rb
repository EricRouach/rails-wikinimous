Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

  resources :articles

  # get '/articles/index', to: 'article#index'

  # get '/articles/show/:id', to: 'article#show'

  # get '/articles/new', to: 'article#new'

  # post '/articles', to: 'article#create'

  # get '/articles/:id/edit', to: 'article#edit'

  # patch '/articles/:id', to: 'article#update'

  # delete '/articles/:id', to: 'article#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
