Rails.application.routes.draw do

  resources :venues
  resources :tickets
  resources :events
  resources :users, only:[:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login', to: 'users#token_authenticate'
  post '/login', to: 'auth#create'
  post 'signup', to: 'users#create'
  get '/profile', to: 'users#profile'   

end
