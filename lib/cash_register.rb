class CashRegister
 attr_accessor :total, :discount 
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item_list = []
        @transactions = []
    end
    
    def discount
        @discount = 20
    end

    def add_item(item, price, quantity = 1)
        self.total += (price * quantity)
        quantity.times {@item_list.push(item)} 
        @transactions.push(price * quantity)
    end 

    def apply_discount

        if @discount == 0 
            return "There is no discount to apply."
        else 
            self.total = total - ((total * @discount) / 100)
            return "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @item_list
    end

    def void_last_transaction
        
        @total -= @transactions.last
    end
end
