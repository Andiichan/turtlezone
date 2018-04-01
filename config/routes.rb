Rails.application.routes.draw do
  root to: 'pages#home'
  get '/listings', to: 'listings#index'
end
