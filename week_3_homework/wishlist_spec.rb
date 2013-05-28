require 'minitest/autorun'
require_relative 'wishlist'

# tests for Wishlist class

describe Wishlist do
	
  it 'has a name field' do
		w = Wishlist.new('my_wishlist')
		w.name.must_equal 'my_wishlist'
	end

	it 'can hold zero or many items' do
    a = Item.new(name: 'first item')
    b = Item.new(name: 'second item')
    w = Wishlist.new('my_wishlist')
    m = Wishlist.new('my_other_wishlist', [a, b])
    w.items.must_equal []
    m.items.must_equal [a, b]
  end

  it 'can report how big it is' do
    a = Item.new(name: 'first item')
    b = Item.new(name: 'second item')
    w = Wishlist.new('my_wishlist', [a, b])
    w.how_many_items?.must_equal 2
  end

  it 'can easily add items to end of list' do
    a = Item.new(name: 'first item')
    b = Item.new(name: 'second item')
    c = Item.new(name: 'third item')
    w = Wishlist.new('my_wishlist', [a, b])
    w.add_item(c)
    w.items.must_equal [a, b, c]
  end

  it 'can return a specific number of items from top of list' do
    a = Item.new(name: 'first item')
    b = Item.new(name: 'second item')
    c = Item.new(name: 'third item')
    w = Wishlist.new('my_wishlist', [a, b, c])
    w.top(2).must_equal [a, b]
  end

end