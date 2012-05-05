class CreateMarketProducts < ActiveRecord::Migration
  def change
    create_table :market_products do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.boolean :unavailable
      t.references :group

      t.timestamps
    end
    add_index :market_products, :group_id
  end
end
