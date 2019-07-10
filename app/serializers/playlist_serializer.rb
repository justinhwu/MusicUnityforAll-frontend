class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :genre, :user_id, :songs, :mixclouds
  has_many :songs
  has_many :mixclouds
end
