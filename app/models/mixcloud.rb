class Mixcloud < ApplicationRecord
  has_many :playlist_mixclouds
  has_many :playlists, through: :playlist_mixclouds
end
