class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :code
      t.integer :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
