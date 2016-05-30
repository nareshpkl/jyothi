class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :supplier_id
      t.string :acc_type
      t.string :balance

      t.timestamps null: false
    end
  end
end
