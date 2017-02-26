class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :auth0_id, :text, :title, :rank, :active, :problem_id
  # to include the problem object here use delegate?
end
