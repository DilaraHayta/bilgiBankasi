class RemoveUsernameFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :username, :string
    add_index :users, :email
  end
end
