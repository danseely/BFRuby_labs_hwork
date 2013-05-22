require 'minitest/autorun'
require_relative 'refridgerator'

describe Refridgerator do
  it 'defaults to empty list if none given' do
    fridge = Refridgerator.new
    fridge.drinks.must_equal []
  end
  
  it 'defaults to capacity of 12' do
    fridge = Refridgerator.new
    fridge.capacity.must_equal 12
  end
  
  it 'has a count of current number of drinks' do
    fridge = Refridgerator.new(['beer', 'wine', 'milk'])
    fridge.drinks.count.must_equal 3
  end
  
  it 'can tell us if it is full' do
    fridge = Refridgerator.new(['beer', 'wine', 'milk'], 3)
    fridge.is_full?.must_equal true
  end
  
  it 'can tell us if it is empty' do
    fridge = Refridgerator.new
    fridge.is_empty?.must_equal true
  end
  
  it 'can have a drink removed' do
    fridge = Refridgerator.new(['beer', 'wine', 'milk'], 3)
    fridge.remove_drink('wine')
    fridge.drinks.must_equal ['beer', 'milk']
  end

  it 'has a way to add a drink' do
    fridge = Refridgerator.new(['beer', 'wine', 'milk'])
    fridge.add_drink('pop')
    fridge.drinks.must_equal ['beer', 'wine', 'milk', 'pop']
  end

  it 'does not allow a drink to be removed if list is empty' do
    fridge = Refridgerator.new([])
    fridge.remove_drink
  end

  it 'does not allow drink to be added if full' do
    fridge = Refridgerator.new(['beer', 'wine'], 2)
    fridge.add_drink('pop')
    fridge.drinks.must_equal ['beer', 'wine']
  end
end