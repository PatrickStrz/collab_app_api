class FixColumnNameForProblems < ActiveRecord::Migration[5.0]
  def change
    rename_column :problems, :user_id, :auth0_id
  end
end
