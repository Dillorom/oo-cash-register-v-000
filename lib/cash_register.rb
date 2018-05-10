
class CashRegister
  attr_accessor :items, :title, :price, :quantity, :total, :discount, :last_transaction
  @@total = 0


  def initialize(discount = 0)
    @title = title
    @price = price
    @total = 0
    @itams = []
    @last_transaction = last_transaction
    @discount = discount
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
    #quantity.times do @items << self
    #end
    #self.last_transaction = price*quantity
  end

  def apply_discount
    if discount
      @total = @total - 200
      puts "After the discount, the total comes to $#{self.total}."
    end
  end

end
