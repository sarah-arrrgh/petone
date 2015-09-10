class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|

      t.string "member_name"
      t.integer "member_number"
      t.integer "apples_kg"
      t.integer "oranges_kg"
      t.integer "broccoli_ct"
      t.timestamps null: false
    end
  end
end
