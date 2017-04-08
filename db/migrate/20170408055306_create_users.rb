class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :name
      t.string :family_name
      t.string :given_name
      t.string :email
      t.string :picture
      t.string :picture_large

      t.timestamps
    end
  end
end
