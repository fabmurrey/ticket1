class Task < ActiveRecord::Base
belongs_to :admin_user
  belongs_to :project
 
  validates :title, :project_id,  :presence => true
  validates :is_done, :inclusion => { :in => [true, false] }
attr_accessible :admin_user_id, :due_date, :is_done, :project_id, :title
end
