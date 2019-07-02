class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :genre, :playtime, :release_date
  has_many :playlists
end
