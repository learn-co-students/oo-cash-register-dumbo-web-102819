require 'pry'

class CashRegister
    attr_accessor :discount, :total, :last_transaction, :items
    def initialize (discount=0)
        @total = 0
        @discount = discount
        @items = []
        
    end 


    def add_item (item, price, quantity=1)
       self.total += price*quantity
       quantity.times do 
         self.items << item
       end 
       self.last_transaction = {:price => price, :quantity => quantity}

    end 

    
    def apply_discount
        if discount == 0 
            p "There is no discount to apply."
        else 
            self.total = (total - total * discount.to_f/100).to_i
            p "After the discount, the total comes to $#{self.total}."
        end 
    end 


   
   def void_last_transaction 
    self.total -= self.last_transaction[:price]*self.last_transaction[:quantity]
   end

end     
    