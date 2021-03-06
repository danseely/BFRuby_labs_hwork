class Wishlist

  attr_reader :name, :items
  
  def initialize(name, items=[])
    @name = name
    @items = items # array for items
  end
  
  def size
    items.count
  end
  
  def add(item)
    items << item
  end
  
  def top(x=5)
    if x.class == Fixnum
      items[0...x]
    else
      puts 'Please give me an integer'
    end
  end
	
end

class Item

  attr_reader :name
  attr_accessor :sale, :url, :price

  def initialize(name, sale=false, url=nil, price=nil)
    @name = name
    @sale = sale
    @url = url
    @price = price
  end
  
end

# now use them

books = Wishlist.new('Book List')
a_wrinkle_in_time = Item.new('A Wrinkle in Time', false, 'http://amzn.com/B004OA64H0', 5.89)
fight_club = Item.new('Fight Club', 12.99)
books.add(a_wrinkle_in_time)
books.add(fight_club)
puts books.size # => 2

puts "#{books.top('hello')}" # gives 'please give me an integer'
puts "#{books.top(2)}" # gives items as blobs

puts books.name # this gives Book List

puts fight_club.name # this gives Fight Club

puts a_wrinkle_in_time.url # this gives the url properly