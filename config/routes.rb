Rails.application.routes.draw do
  get '/jedis/new', to: 'jedis#new', as: 'new_jedi'
  root 'static_pages#home'
  get '/jedis', to:'jedis#index', as: 'jedis'
  post '/jedis', to:'jedis#create'
  get '/jedis/:id', to: 'jedis#show', as: 'jedi'
  get '/jedis/:id/edit', to: 'jedis#edit', as: 'edit_jedi'
  get '/siths', to: 'siths#index', as: 'siths'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session/', to: 'session#destroy'
  get '/siths/new', to: 'siths#new', as: 'new_sith'
  get '/siths/:id', to: 'siths#show', as: 'sith'
  get '/siths/:id/edit', to: 'siths#edit', as: 'edit_sith'
  patch '/siths/:id', to: 'siths#update'
  post '/siths', to: 'siths#create'
  post '/fights', to:"fights#create", as: 'fights'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
