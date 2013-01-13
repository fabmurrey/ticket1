class RemoveAdminUserIdFromTasks < ActiveRecord::Migration
  def up
remove_column :tasks, :admin_user_id
  end

  def down
add_column :tasks, :admin_user_id, :integer
  end
end
