require 'rails_helper'

RSpec.describe Product, type: :model do
    describe "#alphabetical" do
        before do
            @product1 = Product.create!(:name => "aaaa", :price_vnd => 150000)
            @product2 = Product.create!(:name => "cccc", :price_vnd => 250000)
            @product3 = Product.create!(:name => "bbbb", :price_vnd => 900000)
        end

        it "let user sort products" do
            expect(Product.alphabetical).to eq [@product1, @product3, @product2]
        end
    end

    describe "#discount_amount" do

        before do
            @product1 = Product.create!(:name => "aaaa", :price_vnd => 150000)
            @product2 = Product.create!(:name => "cccc", :price_vnd => 250000)
            @product3 = Product.create!(:name => "bbbb", :price_vnd => 900000)
        end

        it "let product discount" do
            expect(@product1.discount_amount).to eq 120000
            # expect(@product2.discount_amount).to eq 120000
            # expect(@product3.discount_amount).to eq 120000
        end
    end


end
