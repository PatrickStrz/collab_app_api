class Problem < ApplicationRecord
  has_many :ideas, dependent: :destroy
  belongs_to :user
end
