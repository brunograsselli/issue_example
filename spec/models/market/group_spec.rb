require 'spec_helper'

describe Market::Group do
  let(:group) { Factory.build(:group) }

  it "should have a accessible name" do
    group.update_attributes name: 'Updated name'
    group.reload.name.should eq 'Updated name'
  end

  it "should have many products" do
    group.products.build
    group.products.first.should be_a Market::Product
  end
end
