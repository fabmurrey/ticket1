ActiveAdmin.register Micropost do
index :download_links => false do
column :id
column :content
column :created_at
  
end
filter :user
 filter :content
end
