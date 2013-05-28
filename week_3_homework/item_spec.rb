require 'minitest/autorun'
require_relative 'item'

# Tests for Item class

describe Item do
  it 'should have a name field' do
    i = Item.new(name: 'my_item')
    i.name.must_equal 'my_item'
  end

  it 'should have a boolean sale field' do
    i = Item.new(name: 'my_item', sale: true)
    i.sale.must_equal true
  end

  it 'should have an optional url field' do
    i = Item.new(name: 'my_item')
    b = Item.new(name: 'my_item', sale: false, url:'omg.com')
    i.url.must_equal nil
    b.url.must_equal 'omg.com'
  end

  it 'should have an optional price field' do
    i = Item.new(name: 'my_item')
    b = Item.new(name: 'my_item', price: 5.00)
    i.price.must_equal nil
    b.price.must_equal 5.00
  end

  it 'should be able to modify its url after creation' do
    i = Item.new(name: 'my_item', url:'omg.com')
    i.url = 'wtf.com'
    i.url.must_equal 'wtf.com'
  end

  it 'should be able to modify its price after creation' do
    i = Item.new(name: 'my_item', price: 5.00)
    i.price = 8.00
    i.price.must_equal 8.00
  end

  it 'should be able to modify its sale status after creation' do
    i = Item.new(name: 'my_item', sale: false)
    i.sale = true
    i.sale.must_equal true
  end

  it 'should be able to hold an array of Photo objs' do
    pic1 = Photo.new('mypics.com/first')
    pic2 = Photo.new('mypics.com/second')
    pic3 = Photo.new('mypics.com/third')
    i = Item.new(name: 'my_pics', photos: [pic1, pic2, pic3])
    i.photos.must_equal [pic1, pic2, pic3]
  end

  it 'should be able to add and remove photos by url' do
    pic1 = Photo.new('mypics.com/first')
    pic2 = Photo.new('mypics.com/second')
    pic3 = Photo.new('mypics.com/third')
    i = Item.new(name: 'my_pics', photos: [pic1, pic2])
    i.photos << pic3
    i.photos.must_equal [pic1, pic2, pic3]
    i.remove_photo('mypics.com/first')
    i.photos.must_equal [pic2, pic3]
  end

end





