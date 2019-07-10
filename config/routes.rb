Rails.application.routes.draw do
  resources :playlist_mixclouds
  resources :mixclouds
  resources :playlist_songs
  resources :songs
  resources :playlists
  resources :users
  post '/login', to: 'users#login'
  post '/addsong', to: 'songs#addsong'
  post '/addmixcloud', to: 'mixclouds#addmixcloud'
  delete '/removesong', to: 'playlist_songs#removesong'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
