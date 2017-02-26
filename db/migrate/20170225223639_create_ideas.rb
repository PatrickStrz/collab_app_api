class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
      t.string :auth0_id
      t.string :title
      t.text :description
      t.integer :rank
      t.boolean :active

      t.timestamps
    end
  end
end
