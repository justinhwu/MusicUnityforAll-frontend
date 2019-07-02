class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :birthday, :email, :playlists
  has_many :playlists
end
