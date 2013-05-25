require_relative 'item'

class Wishlist
  attr_reader :name

  def initialize(name)
    @name = name
  end
end