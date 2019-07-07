class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :videoId, :publishedAt, :channelTitle, :description
end
