class Item
  attr_accessor :name
  attr_accessor :sale
  attr_accessor :url
  attr_reader :price

  def initialize(attrs={})
    @name = attrs[:name]
    @sale = attrs[:sale] ? attrs[:sale] : false
    @url = attrs[:url] ? attrs[:url] : nil 
    @price = attrs[:price] ? attrs[:price] : nil  
  end
end