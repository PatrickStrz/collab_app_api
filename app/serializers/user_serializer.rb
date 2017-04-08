class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :family_name, :given_name, :email, :picture, :picture_large
end
