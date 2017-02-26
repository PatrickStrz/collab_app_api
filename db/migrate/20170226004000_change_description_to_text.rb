class ChangeDescriptionToText < ActiveRecord::Migration[5.0]
  def change
    rename_column :ideas, :description, :text
  end
end
