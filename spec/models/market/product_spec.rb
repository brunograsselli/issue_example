require 'spec_helper'

describe Market::Product do
  let(:product) { Factory.build(:product) }

  it "should have a accessible name" do
    product.update_attributes name: 'Updated name'
    product.reload.name.should eq 'Updated name'
  end

  it "should have a accessible price" do
    product.update_attributes price: 123.34
    product.reload.price.should eq 123.34
  end

  it "should have a accessible quantity" do
    product.update_attributes quantity: 99
    product.reload.quantity.should eq 99
  end

  it "should have a accessible unavailable" do
    product.update_attributes unavailable: true
    product.reload.unavailable.should be_true
  end

  it "should belong to group" do
    product.build_group
    product.group.should be_a Market::Group
  end
end
