class Refridgerator
  attr_reader :capacity
  attr_accessor :drinks
  
  def initialize(drinks=[], capacity=12)
    @drinks = drinks
    @capacity = capacity
  end
  
  def is_full?
    @drinks.count == capacity
  end

  def is_empty?
    @drinks == []
  end

  def remove_drink(drink=nil)
    if @drinks == []
    elsif drink == nil
      @drinks[0]
    else
      @drinks.each do |item|
        if item == drink
          @drinks.delete(item)
        end
      end
    end
  end

  def add_drink(drink)
    if not is_full?
      @drinks << drink
    end
  end

end