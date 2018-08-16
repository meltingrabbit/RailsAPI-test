class AddMyIdToFriends < ActiveRecord::Migration[5.2]
  def change
    add_column :friends, :my_id, :integer
  end
end
