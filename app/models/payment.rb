class Payment < ActiveRecord::Base
attr_accessible :amount, :code, :user_id
 belongs_to :user
  validates :user_id, presence: true 
default_scope order: 'payments.created_at DESC'
end
