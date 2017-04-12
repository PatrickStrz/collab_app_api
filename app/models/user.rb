class User < ApplicationRecord
  #todo: need to enforce uniquness on db, right now only enforced on application level
  validates :user_id, uniqueness: true
  has_many :problems
  has_many :ideas
end
