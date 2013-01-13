class CreatePaypalExpresses < ActiveRecord::Migration
  def change
    create_table :paypal_expresses do |t|

      t.timestamps
    end
  end
end
