Rails.application.routes.draw do

  root 'static_pages#home'

  get '/signin', to: 'sessions#new', as: 'signin'
  post '/session', to: 'sessions#create', as: 'session'
  delete '/session/', to: 'sessions#destroy', as: 'logout'

  get '/auth/facebook/callback' => 'sessions#create'

  resources :users do
    resources :jedis
  end
  resources :siths
  post '/fights', to:"fights#create", as: 'fights'

  # get '/jedis/new', to: 'jedis#new', as: 'new_jedi'
  # get '/jedis', to:'jedis#index', as: 'jedis'
  # post '/jedis', to:'jedis#create'
  # get '/jedis/:id', to: 'jedis#show', as: 'jedi'
  # get '/jedis/:id/edit', to: 'jedis#edit', as: 'edit_jedi'

  # get '/siths', to: 'siths#index', as: 'siths'
  # get '/siths/new', to: 'siths#new', as: 'new_sith'
  # get '/siths/:id', to: 'siths#show', as: 'sith'
  # get '/siths/:id/edit', to: 'siths#edit', as: 'edit_sith'
  # patch '/siths/:id', to: 'siths#update'
  # post '/siths', to: 'siths#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
