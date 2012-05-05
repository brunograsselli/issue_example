class Market::Product < ActiveRecord::Base
  #set_table_name 'market_products'
  belongs_to :group
  attr_accessible :name, :price, :quantity, :unavailable
end
