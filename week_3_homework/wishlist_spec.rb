require 'minitest/autorun'
require_relative 'wishlist'

# tests for Wishlist class

describe Wishlist do
	it 'has a name field' do
		w = Wishlist.new('my_wishlist')
		w.name.must_equal 'my_wishlist'
	end

	it 'can hold items' do
    
  end
end