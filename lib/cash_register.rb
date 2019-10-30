class CashRegister
    
   
    attr_accessor :total, :discount 
    
   def initialize(given_discount = 100) 
       @total = 0 
       @discount = given_discount 
       @items = []
   end 
    
   def add_item(item, price, multiplier = 1)
      @price = price * multiplier
      
        multiplier.times do 
        @items << item
      end 
      
      @total += (price * multiplier)
   end 
   
   def apply_discount()
     @total = (@total * ((100.0 - @discount ) /100)).to_i 
     
     if @total == 0 
        p "There is no discount to apply."
     else 
        p"After the discount, the total comes to $#{@total}." 
     end 
    # @total = @total * (@discount / 100.0) 
    end 
    
    def items 
       @items
    end 
    
    def void_last_transaction
      @total = @total - @price 
    end 
    
end 
