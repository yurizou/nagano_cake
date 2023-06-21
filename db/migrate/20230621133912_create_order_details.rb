class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :orders_id, null: false
      t.integer :items_id, null: false
      t.integer :quantity, null: false
      t.integer :price, null: false
      t.integer :making_status, null: false, default: 0
      t.timestamps
    end
  end
end
