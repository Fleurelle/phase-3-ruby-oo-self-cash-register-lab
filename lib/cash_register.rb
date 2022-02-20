require "pry"

class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        # binding.pry
        self.total += price * quantity
    end

    def apply_discount
        # binding.pry
        if total != 0 
            self.total -= self.total * (self.discount/100.0).to_f
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items(arg1, arg2)
        # binding.pry
    
    end
end
