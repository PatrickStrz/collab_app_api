class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :commentable_id, :commentable_type
end
