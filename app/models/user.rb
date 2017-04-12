class User < ApplicationRecord
  #todo: need to enforce uniquness on db, right now only enforced on applicaiton level
  validates :user_id, uniqueness: true
  has_many :problems
end
