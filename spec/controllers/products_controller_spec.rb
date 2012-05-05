require 'spec_helper'

describe ProductsController do
  it { should be_a ApplicationController }

  describe "index with GET" do
    it "should assign all products" do
      products = [1,2,3]
      Market::Product.stub(:all).and_return(products)
      get :index
      assigns[:products].should eq products
      Market::Product.unstub(:all)
    end

    it "should render index" do
      get :index
      response.should render_template :index
    end
  end
end
