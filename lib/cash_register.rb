require "pry"

class CashRegister
    attr_accessor :total, :discount, :items, :lastTransaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        # binding.pry
        self.lastTransaction = price * quantity
        self.total += self.lastTransaction
        quantity.times do
            self.items << title
        end
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

    def void_last_transaction
        self.total -= self.lastTransaction
    end
end
