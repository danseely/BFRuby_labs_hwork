require_relative 'item'

class Wishlist
  attr_reader :name
  attr_accessor :items

  def initialize(name, items=[])
    @name = name
    @items = items
  end

  def how_many_items?
    @items.count
  end

  def add_item(item)
    @items << item
  end

  def top(x=5)
      if x.class == Fixnum
        items[0...x]
      else
        puts 'Please give me an integer'
      end
  end

end