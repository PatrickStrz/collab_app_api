class ProblemSerializer < ActiveModel::Serializer
  attributes :id, :auth0_id, :text, :title, :rank, :active
end
