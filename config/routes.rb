Rails.application.routes.draw do
  match '/auth/github/callback', to: 'sessions#create', via: [:get, :post]
  root 'welcome#home'
  resources :welcome
end
