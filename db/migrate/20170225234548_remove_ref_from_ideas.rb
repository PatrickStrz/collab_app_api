class RemoveRefFromIdeas < ActiveRecord::Migration[5.0]
  def change
    remove_reference :ideas, :problems, foreign_key: true
  end
end
