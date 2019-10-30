class CashRegister
  attr_reader :discount, :items
  attr_accessor :total

  def initialize (discount=0)
    @total = 0
    @discount = discount
    @items=[]
    @last_item=0
  end

  def add_item (name, cost, number=1)
    self.total += cost*number
    count=0
    while count < number
      @items << name
      count += 1
    end
    @last_item = cost*number
  end

  def apply_discount
    if self.discount > 0
      #discount = @total * (@discount/100)
      self.total -= self.total * self.discount / 100
      "After the discount, the total comes to $#{self.total}."
    else "There is no discount to apply."
    end
  end
  def void_last_transaction
    self.total -= @last_item
  end

end
