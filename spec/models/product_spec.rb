require 'rails_helper'

RSpec.describe Product, type: :model do
	describe "#alphabetical" do
		before do 
      @product1 = Product.create!(:name => "aaaa")
      @product2 = Product.create!(:name => "cccc")
      @product3 = Product.create!(:name => "bbbb")
    end

    it "let user sort products" do
      expect(Product.alphabetical).to eq [@product1, @product3, @product2]
    end
  end

end
