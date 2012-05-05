class CreateMarketGroups < ActiveRecord::Migration
  def change
    create_table :market_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
