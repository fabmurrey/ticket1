ActiveAdmin.register User do
scope :id
index :download_links => false do
column :name
column :email
column :created_at
default_actions
end
  filter :name
  filter :email
end
