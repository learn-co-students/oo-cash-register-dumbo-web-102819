class CashRegister
	attr_accessor :total, :discount, :items, :lastItemPrice
	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity = 1)
		@total += price * quantity
		quantity.times{@items.push(title)}
		@lastItemPrice = price * quantity
	end

	def apply_discount
		if discount == 0
			return "There is no discount to apply."
		end
		@total -= @total*@discount/100
		"After the discount, the total comes to $#{@total}."
	end

	def void_last_transaction
		#puts "Total: #{@total} LastPrice: #{@lastItemPrice} Items: #{items}"
		@total -= @lastItemPrice
	end
end
