class AddProblemRefToIdeas4 < ActiveRecord::Migration[5.0]
  def change
    add_reference :ideas, :problem, foreign_key: true
  end
end
