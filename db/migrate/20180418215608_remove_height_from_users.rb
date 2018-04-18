class RemoveHeightFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :height, :integer
    add_column :users, :height_feet, :integer
    add_column :users, :height_inches, :integer
  end
end
