class ProblemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :text, :title, :rank, :active
end
