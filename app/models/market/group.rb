class Market::Group < ActiveRecord::Base
  #set_table_name 'market_groups'
  attr_accessible :name
  has_many :products
end
