class MixcloudSerializer < ActiveModel::Serializer
  attributes :id, :username, :url, :name, :created_time
end
