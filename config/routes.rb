Rails.application.routes.draw do
  root to: 'pages#home'
  get '/listings', to: 'listings#index'
  get '/listings/new', to: 'listings#new', as: 'new_listing'
end
