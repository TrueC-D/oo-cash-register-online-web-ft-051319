require "pry"

class CashRegister
  attr_accessor :discount, :total, :item, :price, :quantity
  
  @@items = []
  
  def initialize(discount = 0)
    @discount = discount
    @item = item
    @price = price
    @quantity = quantity
    @total = 0
  end
  
  def add_item(item, price, quantity = 1)
    @item = item
    @price = price
    @quantity = quantity
    @total = @total + (price * quantity)
  end
    
  def apply_discount
    @total = @total.to_f*(1-(@discount.to_f*0.01))
    "After the discount, the total comes to $#{@total}."
  end
end