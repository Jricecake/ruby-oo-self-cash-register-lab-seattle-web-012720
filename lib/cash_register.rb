require 'pry'


class CashRegister
    attr_accessor :discount, :total, :items, :last_item

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_item = 0

    end

    def add_item(title, price, quantity = 1)
        quantity.times do @items << title
        end
        @total += (price * quantity)
        @last_item = price * quantity
        # binding.pry
    end

    def apply_discount
        # binding.pry
        if discount > 0
            @total -= total*(@discount/100.to_f) 
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_item
    end


end

