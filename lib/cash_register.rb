class CashRegister
  
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    
  end 
  
  def add_item(title, price, quantity = 1)
    @last =  price*quantity
    @total += price*quantity
    i = 0
    while i < quantity
    @items << title
    i+=1
    end 
  end 
  
  def apply_discount
    if @discount > 0
     @total = @total - @total*(@discount/100.to_f)
     @total.to_s
    
     "After the discount, the total comes to $#{@total}"
    else 
   "There is no discount to apply."
  end 
  end 
  
  def items 
    @items 
  end
  
  def void_last_transaction
    @total -= @last
  end 
    
  
end 