require 'minitest/autorun'
require_relative 'user'
require_relative 'wishlist'

describe User do
  it 'stores a name, username, and email address' do
    u = User.new(name: 'Bob', username: 'bobsmith', email: 'bsmith@me.com')
    u.name.must_equal 'Bob'
    u.username.must_equal 'bobsmith'
    u.email.must_equal 'bsmith@me.com'
  end

  it 'should hold an array of wishlists' do
    w1 = Wishlist.new('first')
    w2 = Wishlist.new('second')
    w3 = Wishlist.new('third')
    u = User.new(name: 'Bob', username: 'bobsmith', email: 'bsmith@me.com')
    u.add_wishlist(w1)
    u.add_wishlist(w2)
    u.add_wishlist(w3)
    u.wishlists.must_equal [w1, w2, w3]
  end

  it 'should not be able to hold like-named wishlists' do
    # ref - http://stackoverflow.com/questions/4351390/how-do-i-check-an-array-for-duplicates
    w1 = Wishlist.new('first')
    w2 = Wishlist.new('second')
    u = User.new(name: 'Bob', username: 'bobsmith', email: 'bsmith@me.com')
    u.add_wishlist(w1)
    u.add_wishlist(w2)
    u.add_wishlist(w2)
    u.wishlists.must_equal [w1, w2]
  end
end