class CreateDetailOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :detail_orders do |t|
      t.references :order, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :price
      t.decimal :amount
      t.text :messages
      t.integer :status

      t.timestamps
    end
  end
end
