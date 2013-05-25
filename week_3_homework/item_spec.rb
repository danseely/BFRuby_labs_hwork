require 'minitest/autorun'
require_relative 'item'

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
    i = Item.new(name: 'my_item')
    i.name = 'other_item'
    i.name.must_equal 'other_item'
  end

  it 'should be able to modify its sale status after creation' do
    i = Item.new(name: 'my_item', sale: false)
    i.sale = true
    i.sale.must_equal true
  end

end