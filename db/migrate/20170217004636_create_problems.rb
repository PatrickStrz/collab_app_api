class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.string :user_id
      t.text :text
      t.string :title
      t.integer :rank
      t.boolean :active

      t.timestamps
    end
  end
end
