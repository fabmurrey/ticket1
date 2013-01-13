class AddAdminUserIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :admin_user_id, :integer
  end
end
