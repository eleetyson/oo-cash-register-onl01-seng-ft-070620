require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @last = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    
    quantity.times do
      self.items << title
    end
    
    self.total += price * quantity
    self.last = price * quantity
  end
  
  def apply_discount
    self.total *= 1 - (self.discount / 100.00).to_f
    
    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.items
  end
  
end  
