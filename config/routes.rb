Rails.application.routes.draw do
  resources :playlist_songs
  resources :songs
  resources :playlists
  resources :users
  post '/login', to: 'users#login'
  post '/addsong', to: 'songs#addsong'
  delete '/removesong/:id', to: 'playlist_songs#removesong'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
