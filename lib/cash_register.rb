require 'pry'
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    
    self.total += price * quantity
  end
  
  def apply_discount
    self.total *= 1 - (self.discount / 100.00).to_f
    self.discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total.to_i}."
  end
  
  def items
    self.items
    binding.pry
  end
  
end  
