class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :auth0_id, :text, :title, :rank, :active, :problem_id
  has_many :comments
end
