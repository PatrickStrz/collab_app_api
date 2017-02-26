class AddProblemRefToIdeas3 < ActiveRecord::Migration[5.0]
  def change
    add_reference :ideas, :problems, foreign_key: true
  end
end
