class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :genre, :user_id
end
