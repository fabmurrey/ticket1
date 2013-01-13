class AddImageUrlToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :image_url, :string
  end
end
