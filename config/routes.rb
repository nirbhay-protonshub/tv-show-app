Rails.application.routes.draw do
  root 'welcome#index'
  resources :users do
    get 'shows/behind', to: 'shows#behind'
    resources :shows, only: [:index]
  end
  resources :listings, only: [:destroy]
  resources :shows do
    get 'set_as_favourite'
    get 'remove_from_favourites'
    resources :listings, except: [:index, :destroy]
  end
  resources :channels, only: [:index, :show]
  get '/search', to: 'shows#search'
  get '/auth/google/callback', to: 'users#google_login'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :favourites, only: [:index]
end
