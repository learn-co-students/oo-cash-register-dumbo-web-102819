require "pry"

class CashRegister
  
  attr_accessor :discount, :total, :items_array
  attr_reader :name, :price, :quantity
  
  ITEMS = []
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items_array = []
  end
  
  def add_item(name, price, quantity = 1)
    self.items_array << { name => { :price => price, :quantity => quantity}}
    
    self.total += (price * quantity)
  end
  
  def apply_discount
    if(@discount == 0)
      return "There is no discount to apply."
    else
      discount = self.discount * 0.01
      self.total -= (self.total * discount)
      return "After the discount, the total comes to $#{self.total.round}."
    end
  end
  
  def items
    arr = []
    self.items_array.map do |item|
      key = item.keys[0]
      item[key][:quantity].times do
        arr << key
      end
    end
    arr
  end
  
  def void_last_transaction
    last_item = self.items_array[items_array.length - 1]
    key = last_item.keys[0]
    self.total -= (last_item[key][:price] * last_item[key][:quantity])
    self.total.round
  end
end
