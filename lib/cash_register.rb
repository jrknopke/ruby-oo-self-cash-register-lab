class CashRegister
    attr_accessor :total, :discount, :items, :new_total
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            items << title
        end
        self.new_total = price * quantity
    end

    def apply_discount
        if @discount > 0
            @total = @total * (1.0 - (discount/100.0))
            "After the discount, the total comes to $#{total.to_i}."
        else
            @total
            "There is no discount to apply."
        end
    end

    def items 
        @items
    end

    def void_last_transaction
        self.total = self.total - self.new_total
    end

end
