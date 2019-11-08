class CashRegister 
    attr_accessor :total, :discount,:items

    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @items =[]

    end 

    def add_item (title,price,quantatiy = 1 )
        @total += price * quantatiy 
        x=0
        while x < quantatiy 
        @items << title 
        x+=1
        @quantatiy = quantatiy
        @price = price 

        end 
    end 

    
    def apply_discount 
        if @discount == 20
        @total -= (@total * @discount / 100)
        return "After the discount, the total comes to $#{@total}."
        else 
        return "There is no discount to apply."
        end 
    end 

    def void_last_transaction
    
        @total -= @quantatiy * @price 
    
    end 
 
   

    
end 



    
   
    
    







