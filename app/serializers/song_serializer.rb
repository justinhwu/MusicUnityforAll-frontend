class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :genre, :playtime, :release_date
end
