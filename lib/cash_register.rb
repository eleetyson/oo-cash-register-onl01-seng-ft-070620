require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do 
      self.items << title
    end
    self.total += price * quantity
  end
  
  def apply_discount
    self.total *= 1 - (self.discount / 100.00).to_f
    self.discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total.to_i}."
  end
  
  def items
    self.items
  end
  
end  
