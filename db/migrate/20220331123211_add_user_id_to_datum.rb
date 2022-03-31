class AddUserIdToDatum < ActiveRecord::Migration[6.1]
  def change
    add_column :data, :user_id, :int
  end
end
