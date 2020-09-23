Rails.application.routes.draw do
  root 'welcome#home'
  get '/auth/github/callback', to: 'sessions#create', via: [:get, :post]
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  # Add your routes here
end
