class CashRegister

    attr_accessor :total, :discount, :items


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = {}
    end

    def add_item(name, price, quantity=1)
        quantity.times {
            @total += price
            @items << name
        }
        @last_transaction = {:price => price, :quantity => quantity}
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            @total *= (1-@discount/100.0)
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end
    
    def void_last_transaction
        @total -= @last_transaction[:price]*@last_transaction[:quantity]
    end

    

end