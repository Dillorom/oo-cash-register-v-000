
class CashRegister
  attr_accessor :items, :price, :quantity, :total, :discount, :last_transaction
  @@all = []


  def initialize(discount = 0)
    @title = title
    @price = price
    @total = 0
    @itams = []
    @@all << self
    @last_transaction = last_transaction

  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
    quantity.times do @items << self
    end
    self.last_transaction = price*quantity
  end

end
