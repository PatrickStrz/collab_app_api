class Problem < ApplicationRecord
  has_many :ideas, dependent: :destroy
end
