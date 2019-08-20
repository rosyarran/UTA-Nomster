class AddUserIdToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :user_id, :string
    add_index :photos, :user_id
  end
end
