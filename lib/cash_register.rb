class cashRegister

        def initialize()
            @items = []
            @discount = discount
            @total = 0
            
        end
        
        #For the first ruby method, a hash is created to store item
        #information that is then stored in the items array.
        def add_item(item, price, quantity)
            item_info = {}
            item_info[:name] = item
            item_info[:price] = price
            item_info[:quantity] = quantity
             @total += price * quantity
            items << item_info
        end

        def discount
            @total = @total * @discount / 100
        end

        def items
            item_names = []
            @items.each do |item_info|
                for quantity 1..item_info[:quantity]
                    item_names << item_info
                end
            end
        return item_names
        end
    end

    



            
    