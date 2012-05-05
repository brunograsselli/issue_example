class Market::Product < ActiveRecord::Base
  belongs_to :group
  attr_accessible :name, :price, :quantity, :unavailable
end
