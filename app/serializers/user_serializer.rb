class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :birthday, :email
end
