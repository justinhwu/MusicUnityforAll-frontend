class Playlist < ApplicationRecord
  has_many :playlist_songs, dependent: :destroy
  has_many :songs, through: :playlist_songs
  has_many :playlist_mixclouds, dependent: :destroy
  has_many :mixclouds, through: :playlist_mixclouds
  belongs_to :user
end
