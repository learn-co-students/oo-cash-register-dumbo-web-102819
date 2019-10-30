require 'pry'
class CashRegister 
     
    attr_accessor :discount, :total, :last
    attr_reader :items 
    def initialize(discount = 0)
        @total = 0 
        @discount = discount 
        @items = []
    end 
    def total 
        return @total
    end 
    def add_item(title, price, quantity = 1)
        @last = (price * quantity)
        @total += (price * quantity)
        i = 0 
        while i < quantity do  
            @items << title 
            
            i += 1
        end 
        
    end 
    def apply_discount
        if @discount > 0 
            @total -= (@total / 100 * @discount)
            return "After the discount, the total comes to $#{@total}."
        else 
            return "There is no discount to apply."
        end 
    end 
    def items 
        return @items  
    end 
    def void_last_transaction
        if @last > 0 
           return (@total -= @last )
        elsif @last == nil 
            return (@total = 0.0)
        end
    end 
end 