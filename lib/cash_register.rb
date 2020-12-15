require "pry"

class CashRegister
    attr_accessor :discount
    attr_accessor :total
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title,price,quantity=1)
        @quantity = quantity
        @items << ([title] * @quantity)
        self.total += price * quantity
    end

    def apply_discount
        if @discount != 0
            self.total = @total - (@total  * @discount/100)
            return "After the discount, the total comes to $#{@total}."
        else
           "There is no discount to apply."
        end
    end

    def items
        @items.flatten
        
    end
end