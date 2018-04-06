Rails.application.routes.draw do
  root to: 'pages#home'

  # Routes for listings
  get '/listings', to: 'listings#index'
  get '/listings/new', to: 'listings#new', as: 'new_listing'
  post '/listings', to: 'listings#create'
  get '/listings/:id/edit', to: 'listings#edit', as: 'edit_listing'
end
