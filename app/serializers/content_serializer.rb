class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :category, :sentiment
end
