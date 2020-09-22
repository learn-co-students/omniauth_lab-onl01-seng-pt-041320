Rails.application.routes.draw do
  root 'welcome#home'
  
  #get '/auth/:provider', to: 'sessions#create'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
