class Product < ActiveRecord::Base
    def self.alphabetical
        order(:name)
    end

    def discount_amount
        price = self.price_vnd
        if price > 100000
          (price * 0.79)
        # elseif price > 200000
        #   price * 0.69
        # elseif price > 800000
        #   price * 0.59
        end

    end
end
