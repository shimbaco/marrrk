class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :user_id, null: false
      t.string :url, null: false
      t.string :title, null: false
      t.timestamps null: false
    end

    add_index :bookmarks, :user_id
    add_index :bookmarks, [:user_id, :url], unique: true

    add_foreign_key :bookmarks, :users
  end
end
