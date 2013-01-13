class RemoveImageUrlFromMicroposts < ActiveRecord::Migration
  def up
remove_column :microposts, :image_url
  end

  def down
add_column :microposts, :image_url, :string
  end
end
