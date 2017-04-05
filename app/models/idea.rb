class Idea < ApplicationRecord
  belongs_to :problem
  has_many :comments, as :commentable
end
